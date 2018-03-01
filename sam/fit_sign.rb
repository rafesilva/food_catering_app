module LogIn
    module_function
    CUST_LIST = {}
    
    def profile

        puts "Can you tell me your name?"
            CUST_LIST[:name] = gets.chomp

        puts "\nAnd your address?"
            CUST_LIST[:address] = gets.chomp

        puts "\nLast but not least, do you have any allergies?\nPlease answer [yes] or [no]"
            user_input = gets.chomp
            # this is a variable to determine whether the food has allergies or not
                while user_input.downcase != "yes" || user_input.downcase != "no"
                    if user_input == "yes"
                        CUST_LIST[:allergies] = user_input
                        break
                    elsif user_input == "no"
                        CUST_LIST[:allergies] = user_input
                        break
                    end
                    puts "Invalid input, please enter [yes] or [no] for allergies.\n"
                    user_input = gets.chomp
                    
                end
            
            return CUST_LIST
    end
end
