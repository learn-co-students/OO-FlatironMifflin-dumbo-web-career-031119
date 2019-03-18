class Manager
  attr_reader :name, :department

  @@all = []

  def initialize(name, department)
    @name = name
    @department = department
    @employees = []
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    @employees
  end

  def hire_employee(name, salary)
    new_employee = Employee.new(name, salary)
    @employees << new_employee
    new_employee
  end

end
