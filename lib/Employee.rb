class Employee

  attr_accessor :name, :salary, :manager_name
  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(num)
    self.all.select do |pay|
       pay.salary > num
         pay.name
    end
  end

  def self.find_by_department(department)
    self.all.find do |employee|
      employee.name
    end
  end

  def tax_bracket
    Employee.all.select do |employee|
      employee.salary <= 1000
    end
  end
end
