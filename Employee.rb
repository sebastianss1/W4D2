class Employee 

    attr_accessor :name, :title, :salary, :boss 

    def initialize(name, title, salary)
        @name = name
        @title = title
        @salary = salary
        @boss = nil 
    end 

    def bonus(multiplier)
        bonus = @salary * multiplier
    end 

    def boss= (manager)
        @boss = manager
        boss.employees_managed << self
    end

    # def inspect
    #     "#{name}, #{boss}"
        
    # end

        



    # #private method is_manager? 
    #     #if !title includes ""
    #    employees_managed <<  new_employee ??

    

end 
