require_relative 'table_display'
require 'colorize'

module FoodsList
    module_function
    Breakfast = [
        "Blintzes",
        "Boiled egg",
        "Breadfruit",
        "Breakfast burrito",
        "Breakfast cereal",
        "Breakfast roll",
        "Breakfast sandwich",
        "Breakfast sausage",
        "Breakfast taco",
        "Brenntar"
    ]

    Lunch = [
        "Éclair",
        "Eggs",
        "Egg sandwich",
        "Eggs Benedict",
        "Energy bar",
        "English muffin",
        "Ham",
        "Hard-boiled egg",
        "Hash browns",
        "Home fries"
    ]

    Dinner = [
        "Malt-O-Meal",
        "McGriddle",
        "McMuffin",
        "Monkey bread",
        "Muesli",
        "Muffin",
        "Pancake",
        "Pigs in a blanket",
        "Poached egg",
        "Pop-Tart",
        "Protein bar"
    ]
    # Day 1
    Day1_Breakfast = [Breakfast[0],Breakfast[1],Breakfast[2]]
    Day1_Lunch = [Lunch[0],Lunch[1],Lunch[2]]
    Day1_Dinner = [Dinner[0],Dinner[1],Dinner[2]]
    
    # Day 2
    Day2_Breakfast = [Breakfast[4],Breakfast[4],Breakfast[3]]
    Day2_Lunch = [Lunch[4],Lunch[4],Lunch[3]]
    Day2_Dinner = [Dinner[4],Dinner[4],Dinner[3]]

    # Day 3
    Day3_Breakfast = [Breakfast[4],Breakfast[3],Breakfast[5]]
    Day3_Lunch = [Lunch[4],Lunch[3],Lunch[5]]
    Day3_Dinner = [Dinner[4],Dinner[3],Dinner[5]]


    # changing the sentence
    def swap_foods (array,index)
        array[index] = ("Non-Allergic " + array[index]).colorize(:green)
    end

    
    
end


# puts "changed to\n"

# swap_foods