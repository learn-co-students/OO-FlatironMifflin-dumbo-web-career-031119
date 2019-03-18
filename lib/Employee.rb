class Employee
  attr_reader :name, :salary

  @@all = []

  def initialize(name, salary)
    @name = name
    @salary = salary
    @@all << self
  end

  def manager
    Manager.all.find do |manager|
      manager.employees.include?(self)
    end
  end

  def manager_name
    manager.name
  end

  def self.all
    @@all
  end

  def self.paid_over(amount)
    all.select { |employee| employee.salary > amount}
  end

  def self.find_by_department(department)
    all.find {|employee| employee.manager.department == department}
  end

  def tax_bracket
    @@all.select { |employee| employee.salary.between?(self.salary-1000, self.salary+1000) }
  end

end
