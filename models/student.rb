require_relative('../db/sql_runner')
require_relative('house')

class Student

  attr_reader :first_name, :last_name, :house_id, :age, :id

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id']
    @age = options['age'].to_i
  end

def save()
  sql = "INSERT INTO students
(first_name, last_name, house_id, age)
VALUES
($1, $2, $3, $4)
RETURNING *"
values = [@first_name, @last_name, @house_id, @age]
student_data = SqlRunner.run(sql, values)
@id = student_data.first["id"].to_i
end


def pretty_name()
  return "#{@first_name} #{@last_name}"
end

def house()
  sql = "SELECT * FROM houses WHERE id = $1"
  values = [@house_id]
  result = SqlRunner.run(sql, values).first()
  house = House.new(result)
  return house.name
end

def self.all()
  sql = "SELECT * FROM students"
  students =SqlRunner.run(sql)
  result = students.map{ |student| Student.new(student)}
  return result
end

def self.find(id)
  sql = "SELECT * FROM students WHERE id = $1"
  values = [id]
  student = SqlRunner.run(sql, values)
  return Student.new(student.first)
end

end
