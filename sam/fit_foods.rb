require_relative 'table_display'
require_relative 'fit_sign'
require 'colorize'
include LogIn

module FoodsList
    module_function
    B = [
        "Blintzes",
        "Boiled egg",
        "Breadfruit",
        "Quinoa and Chia Porridge",
        "Oat Meal",
        "Tomato Toast With Macadamia Ricotta",
        "Breakfast sandwich",
        "Avocado Toast With Egg",
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

    
    Meal_normal = {
        breakfast: ["#{B.sample}","#{B.sample}","#{B.sample}"],
        lunch: ["#{L.sample}","#{L.sample}","#{L.sample}"],
        dinner: ["#{D.sample}","#{D.sample}","#{D.sample}"]
    }
    
    Meal_allergic = {
        breakfast: ["#{B.sample.colorize(:yellow)}","#{B.sample}","#{B.sample}"],
        lunch: ["#{L.sample}","#{L.sample}","#{L.sample.colorize(:yellow)}"],
        dinner: ["#{D.sample}","#{D.sample.colorize(:yellow)}","#{D.sample}"]
    }
    
    # Alternate meal and non allergic
    Meal_alt = {
        breakfast: ["#{B.sample}","#{B.sample}","#{B.sample}"],
        lunch: ["#{L.sample}","#{L.sample}","#{L.sample}"],
        dinner: ["#{D.sample}","#{D.sample}","#{D.sample}"]
    }
    


    # changing the sentence
    # def swap_foods (hash_name,key,value) do
    #     puts (hash_name[key][value]).colorize(:green)
    #     # hash[keys[val]] = ("Non-Allergic " + hash[keys[val]]).colorize(:green)
    # end
    
end
 
