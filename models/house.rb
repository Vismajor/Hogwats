class House


  attr_reader :name, :id, :image_url

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @image_url = options['image_url']
  end


  def save()
    sql = "INSERT INTO houses ( name, image_url ) VALUES ('#{ @name }', '#{@image_url}') 
      RETURNING *;"
    house = SqlRunner.run(sql)
    @id = house.first()['id'].to_i
  end

  def self.find( id )
    sql = "SELECT * FROM houses WHERE id=#{@id};"
    house = SqlRunner.run( sql )
    result = House.new( house.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run( sql )
    result = houses.map { |house| House.new( house ) }
    return result
  end


end
