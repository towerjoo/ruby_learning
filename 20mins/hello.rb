class Greeter
    def initialize(name="World")
        @name = name
    end
    
    def say_hi
        puts "Hi #{@name}!"
    end

    def say_bye
        puts "Bye #{@name}, come back soon!"
    end
end

a = Greeter.new()
a.say_hi
a.say_bye
