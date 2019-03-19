class Employee
  attr_reader :name, :salary, :boss
  @@all = []
  def initialize(name, salary, boss)
    @name = name
    @salary = salary
    @boss = boss
    @@all << self
  end

  def self.all
    @@all 
  end

  def self.paid_over(amount)
    @@all.select{|employee| employee.salary > amount}
  end

  def self.find_by_department(dept_name)
    @@all.select{|employee| employee.boss.department == dept_name}
  end

  def tax_bracket
    @@all.select{|employee| employee.salary > self.salary - 1 && employee.salary < self.salary + 1 }
  end
end
