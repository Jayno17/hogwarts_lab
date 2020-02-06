require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../student")

class TestStudent < MiniTest::Test

def setup
  options = { "id" => 1, "first_name" => "Harry", "last_name" => "Potter", "house" => "Gryffindor", "age" => 13 }

  @student = Student.new(options)
end

def test_first_name()
    result = @student.first_name()
    assert_equal("Harry", result)
  end

  def test_last_name()
    result = @student.last_name()
    assert_equal("Potter", result)
  end

  def test_house()
    result = @student.house()
    assert_equal("Gryffindor", result)
  end

def test_age()
  result = @student.age()
  assert_equal(13, result)
end

end
