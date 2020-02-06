require_relative('../models/student')
require_relative('../models/house')

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 13
  })

student1.save()

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 13
  })

student2.save()

student3 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house" => "Ravenclaw",
  "age" => 14
  })

student3.save()

student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 13
  })

student4.save()

student5 = Student.new({
  "first_name" => "Hannah",
  "last_name" => "Abbott",
  "house" => "Hufflepuff",
  "age" => 14
  })

student5.save()

house1 = House.new({
  "name" => "Gryffindor",
  "logo" => "logo goes here"
  })
house1.save()

house2 = House.new({
  "name" => "Ravenclaw",
  "logo" => "logo goes here"
  })
house2.save()

house3 = House.new({
  "name" => "Hufflepuff",
  "logo" => "logo goes here"
  })
house3.save()

house4 = House.new({
  "name" => "Slytherin",
  "logo" => "logo goes here"
  })
house4.save()
