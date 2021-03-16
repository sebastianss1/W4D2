require_relative "./employee.rb"


class Manager < Employee

    attr_accessor :name, :title, :salary, :employees_managed
    def initialize(name, title, salary)
        super
        @employees_managed = []
        #if another instance has name of manager as boss, 
        #employees_managed << employee
        #holds an array of employees assigned to the manager 
        #manager must report to higher level 
    end 

    def bonus(multiplier)
        return managed_salaries * multiplier
    end

    def managed_salaries
        total_salary = 0

        self.employees_managed.each do |el|
            if el.is_a?(Manager)
                total_salary += el.managed_salaries + el.salary
            else
                total_salary += el.salary
            end
        end
        total_salary
    end 

            # total_salary = 0
            # manager = [f]

            # until manager.empty?
            #     current_manager = manager.shift
            #         current_manager.each do |person|
            #             total_salary += person.salary
            #             manager << person
        # super ???? 
        #  bonus = (sum of salaries of employees_managed) * multiplier
         #go through levels, find salaries, * multi 





end 

# Employee.new 
# if employee.title.include?("manager")
# create Manager.new with same attributes as employees 
#if not
#proceed with employee attributes only


ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("Darren", "TA Manager", 78000)
shawna = Employee.new("Shawna", 'TA', 12000)
david = Employee.new("David", 'TA', 10000)

david.boss = darren
shawna.boss = darren
darren.boss = ned