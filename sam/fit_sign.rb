module LogIn
    module_function
    CUST_LIST = {}
    
    def sign_in

        puts "Can you tell me your name?"
            CUST_LIST[:name] = gets.chomp

        puts "\nAnd your address?"
            CUST_LIST[:address] = gets.chomp

        puts "\nLast but not least, do you have any allergies?\nPlease answer [yes] or [no]"
            user_input = gets.chomp
            # this is a variable to determine whether the food has allergies or not
            allergies = false
                while user_input.downcase != "yes" || user_input.downcase != "no"
                    if user_input == "yes"
                        allergies = true
                        break
                    elsif user_input == "no"
                        allergies = false
                        break
                    end
                    puts "Invalid input, please enter [yes] or [no] for allergies.\n"
                    user_input = gets.chomp
                    
                end
            CUST_LIST[:allergies] = user_input
            return CUST_LIST
    end
end
