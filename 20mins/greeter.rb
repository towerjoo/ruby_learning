#/usr/bin/env ruby
class Greeter
    attr_accessor :name
    
    def initialize(name="World")
        @name = name
    end

    def say_hi
        if @name.nil?
            puts "..."
        elsif @name.respond_to?("each")
            @name.each do |n|
                puts "Hello #{n}!"
            end
        else
            puts "Hello #{@name}!"
        end
    end

    def say_bye
        if @name.nil?
            puts "..."
        elsif @name.respond_to?("join")
            puts "Bye #{@name.join(", ")}. Come back soon!"
        else
            puts "Bye #{@name}. Come back soon!"
        end
    end
end

if __FILE__ == $0

a = Greeter.new
a.say_hi
a.say_bye

a = Greeter.new("Zhutao")
a.say_hi
a.say_bye

a = Greeter.new()
a.name = ["Tom", "Jack", "Jim"]
a.say_hi
a.say_bye

end
