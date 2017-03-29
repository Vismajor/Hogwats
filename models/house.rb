class House


  attr_reader :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end


  def save()
    sql = "INSERT INTO houses ( name ) VALUES ('#{ @name }') 
      RETURNING *;"
    house = SqlRunner.run(sql)
    @id = house.first()['id'].to_i
  end

  # def self.find( id )
  #   sql = "SELECT * FROM students WHERE id=#{@id};"
  #   student = SqlRunner.run( sql )
  #   result = Student.new( student.first )
  #   return result
  # end

  # def self.all()
  #   sql = "SELECT * FROM students;"
  #   students = SqlRunner.run( sql )
  #   result = students.map { |student| Student.new( student ) }
  #   return result
  # end


end
