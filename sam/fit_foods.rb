require_relative 'table_display'
require 'colorize'

module FoodsList
    module_function
    B = [
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

    L = [
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

    D = [
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
    Day1 = {
        breakfast: ["#{B[0]}","#{B[1]}","#{B[2]}"],
        lunch: ["#{L[0]}","#{L[1]}","#{L[2]}"],
        dinner: ["#{D[0]}","#{D[1]}","#{D[2]}"]
    }
    
    # Day 2
    Day2 = {
        breakfast: ["#{B[4]}","#{B[4]}","#{B[3]}"],
        lunch: ["#{L[4]}","#{L[4]}","#{L[3]}"],
        dinner: ["#{D[4]}","#{D[4]}","#{D[3]}"]
    }

    # Day 3
    Day3 = {
        breakfast: ["#{B[4]}","#{B[3]}","#{B[5]}"],
        lunch: ["#{L[4]}","#{L[3]}","#{L[5]}"],
        dinner: ["#{D[4]}","#{D[3]}","#{D[5]}"]
    }


    # changing the sentence
    def swap_foods (array,index)
        array[index] = ("Non-Allergic " + array[index]).colorize(:green)
    end

    
    
end


# puts "changed to\n"

# swap_foods