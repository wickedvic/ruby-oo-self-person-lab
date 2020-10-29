# # your code goes here
# require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness
        if @happiness < 10 && @happiness > 0
            @happiness
        elsif @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene
        if @hygiene < 10 && @hygiene > 0
            @hygiene
        elsif @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7 
           return true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7 
           return true
        else
            false
        end
    end

    def get_paid(salary) 
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
    
        return "♪ Rub-a-dub just relaxing in the tub ♫"
        return hygiene
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3 
        return "♪ another one bites the dust ♫"
       
    end


end # end of class


# p1 = Person.new("julio", 25)
# p1.get_paid(10) = 35


