require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :grade
  attr_reader :id

  def initialize(id = nil, name, grade)
    @id = id 
    @name = name 
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
      )
    SQL

DB[:conn].execute(sql)
  end

  def self.drop_table
  end

  def save
  end

  def self.create(name, grade)
  end

  def self.new_from_db(row)
  end

  def self.find_by_name(name)
  end

  def update
  end
  

end
