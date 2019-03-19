class Employee

    attr_accessor :name
    attr_reader :salary, :manager_name

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def manager_name
        Manager.all.find {|manager|
            if manager.employees.include?(self)
                return manager.name
            end
        }
    end

    def self.paid_over(num)
        Employee.all.select {|employee| employee.salary > num}
    end

    def self.find_by_department(dep_name)
        Employee.all.find {|employee| 
            Manager.all.each {|manager|
                employee.manager_name === manager.name && manager.department === dep_name
            }
        }
    end

    def tax_bracket
        Employee.all.select {|employee| employee.salary > (self.salary - 1000) && employee.salary < (self.salary + 1000)}
    end

    def self.all
        @@all
    end

end
