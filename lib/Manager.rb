class Manager

  attr_accessor :name, :department, :age

  @@managers = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@managers << self
  end

  def self.all
    @@managers
  end

  def employees
    Employee.all.select do |employee|
      employee.manager == self
    end
  end

  def hire_employee(name, salary)
    employee = Employee.new(name, salary, self)
  end

  def self.all_departments
    self.all.map do |manager|
      manager.department
    end
  end

  def self.average_age
    age_arr = self.all.map do |manager|
      manager.age
    end

    sum = 0
    age_arr.each do |age|
      sum += age
    end

    average = sum.to_f/age_arr.length
  end

end
