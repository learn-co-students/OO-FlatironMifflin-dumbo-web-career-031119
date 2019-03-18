class Employee

  attr_accessor :name, :salary, :manager

  @@employees = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@employees << self
  end

  def self.all
    @@employees
  end

  def self.paid_over(salaryNum)
    self.all.select do |employee|
      employee.salary > salaryNum
    end
  end

  def self.find_by_department(name)
    employee1 = self.all.find do |employee|
      employee.manager.department == name
    end
    employee1.manager.department
  end

  def tax_bracket
    @@employees.select do |employee|
      self.salary + 1000 >= employee.salary && self.salary - 1000 <= employee.salary
    end
  end

end
