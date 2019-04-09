class Manager
  attr_accessor :name, :department, :age, :employee
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @employee = employee
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(employee, salary)
    Employee.new(employee, salary, self)
  end

  def self.all_departments
    @@all.map do |sector|
      sector.department
    end
  end

  def self.average_age
  arr = @@all.map do |manager|
       manager.age
    end
    arr.inject(:+)/ arr.size
  end

end
