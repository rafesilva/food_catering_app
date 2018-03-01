require_relative 'fit_sign'
require_relative 'fit_foods'
require_relative 'table_display'
require 'colorize'
include FoodsList
include DisTable
include LogIn

# Customer sign_in
    profile
    hash_horizontal CUST_LIST
# Displaying the Meal for today
    puts "TODAY's MEAL ----"
    if CUST_LIST[:allergies].downcase == "yes"
        display_hash_3 Meal_allergic
    else
        display_hash_3 Meal_normal
    end
# Option to change set
    puts "Would you like to change set? [yes] or [no]"
    answer = gets.chomp
    while answer != "yes" || answer != "no"
        if answer == "yes"
            system 'clear'
            puts "TODAY's MEAL ****"
            display_hash_3 Meal_alt
            puts "Would you like to change back? [yes] or [no]"
            answer = gets.chomp
            if answer == "yes"
                system'clear'
                puts "TODAY's MEAL ****"
                display_hash_3 Meal_allergic
                break
            elsif answer == "no"
                break
            end
        elsif answer == "no"
            break
        end
        puts "Sorry, didn't get your answer..."
        puts "Would you like to change set? [yes] or [no]"
        answer = gets.chomp
    end

# FINISH
puts "Thank you for choosing your meal!"