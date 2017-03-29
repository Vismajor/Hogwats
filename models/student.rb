class Student

  attr_reader :first_name, :last_name, :house, :age, :id

  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age'].to_i
  end


  def save()
    sql = "INSERT INTO students ( first_name, last_name, house, age ) VALUES ('#{ @first_name }','#{ @last_name }','#{ @house }',#{ @age }) 
      RETURNING *;"
    student = SqlRunner.run(sql)
    @id = student.first()['id'].to_i
  end

  def self.find( id )
    sql = "SELECT * FROM students WHERE id=#{@id};"
    student = SqlRunner.run( sql )
    result = Student.new( student.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM students;"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student ) }
    return result
  end


end
