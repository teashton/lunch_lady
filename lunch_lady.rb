require 'pry'
require 'colored'
require 'colorize'
require 'colorized_string'

Main_Entree = [
  {name: "Mama's Meat Loaf".colorize(:light_yellow), price: 7},
  {name: 'Ahvokado Toast'.colorize(:light_green), price: 15},
  {name: 'Chopped Cale Salad'.green, price: 18}
]
SideOption = [
  {name: "Seeweed Salad with Toe Food".colorize(:cyan), price: 4},
  {name: "Bae Kahn Raps".colorize(:light_blue), price: 5},
  {name: "Luke'n Leia's S.S. Enter_Prize Charcuterie Bored".blue, price: 8}
   ]

@user_order = [] # this is the array that all of the users inputs will be put into

def menu
  puts
  puts "             ** Welcome to The **                 ".colorize(:light_yellow).on_blue.underline
  puts ", * ` ` * , , *` `Hodge Podge` ` * , , * ` ` * , ,".colorize(:light_yellow).on_blue.underline
  puts"                    .LODGE.                       ".colorize(:light_yellow).on_blue.underline
  puts
  puts "**Please select an Main Entree! Press *'Q'* at any time to quit or 'R' to start over.**".colorize(:light_green).on_blue.underline
  puts
  main_dish
  puts "**And for your first Side?**".colorize(:light_green).on_blue.underline
  puts
  side_dish
  puts "**What other side would you like?**".colorize(:light_green).on_blue.underline
  puts
  side_dish_2
  puts "**Alright! So that will be:**".colorize(:light_green).on_blue.underline
  puts
  order
  puts
  puts "**Your grand total comes to:**".colorize(:light_green).on_blue.underline
  puts
  total

end

def main_dish
  Main_Entree.each_with_index do |key, index|
    index = index + 1 #by doing index + 1 it shows us 1, item 2, item 3, item instead of starting at 0
    puts "#{index}, #{key[:name]}, $#{key[:price]}"
  end
  input = gets.strip.downcase #gets the users input
    case input  #idicates that
    when "1"    #when the user puts 1 in the text it will add the first index item to the user_order array.
      @user_order << (Main_Entree[0])
    when "2"    #this will do the same as the first one but for the second item in the index
      @user_order << (Main_Entree[1])
    when "3"  #this will do the same as the second and first but for the third item in the index.
      @user_order << (Main_Entree[2])
    when
      "q"
      puts
      quit
    when
      "r"
      reset
    else        #if 1, 2, or 3 is not typed in it will return the following:
      puts "**Please select an item included under the Main Entree menu.**".colorize(:light_yellow).on_red.underline
      puts
      main_dish
  end
end


def side_dish
  SideOption.each_with_index do |key, index|
    index = index + 1
    puts "#{index}, #{key[:name]}, $#{key[:price]}"
  end
  input = gets.strip #gets the users input
    case input  #idicates that
    when '1'    #when the user puts 1 in the text it will add the first index item to the user_order array.
      @user_order << (SideOption[0])
    when '2'    #this will do the same as the first one but for the second item in the index
      @user_order << (SideOption[1])
    when '3'    #this will do the same as the second and first but for the third item in the index.
      @user_order << (SideOption[2])
    when
      "q"
      puts
      quit
    when
      "r"
      reset
    else        #if 1, 2, or 3 is not typed in it will return the following:
    puts "**Please select an item included under 'Sides'.**".colorize(:light_yellow).on_red.underline
    side_dish
  end
end

def side_dish_2
  SideOption.each_with_index do |key, index|
    index = index + 1
    puts "#{index}, #{key[:name]}, $#{key[:price]}"
  end
  input = gets.strip #gets the users input
    case input  #idicates that
    when '1'    #when the user puts 1 in the text it will add the first index item to the user_order array.
      @user_order << (SideOption[0])
    when '2'    #this will do the same as the first one but for the second item in the index
      @user_order << (SideOption[1])
    when '3'    #this will do the same as the second and first but for the third item in the index.
      @user_order << (SideOption[2])
    when
      "q"
      puts
      quit
    when
      "r"
      reset
    else        #if 1, 2, or 3 is not typed in it will return the following:
    puts "**Please select an item included under 'Sides'.**".colorize(:light_yellow).on_red.underline
    side_dish_2
  end
end

def quit
  puts "Thanks for coming in!".colorize(:light_green).on_blue.underline
  puts
  exit
end

def order
  @user_order.each_with_index do |key, index|
    puts "#{index + 1}, #{key[:name]}, $#{key[:price]}"
  end
end

def reset
  @user_order.clear
  puts "Alright, let's start that order over again from scratch.".colorize(:light_green).on_blue.underline
  puts
  puts "Type 'Yes' if that's OK.".colorize(:light_green).on_blue.underline
  puts
  input = gets.strip.downcase
  if input = 'Yes'
    menu
  else
    menu
  end
end

def total
  amount_owed = 0.00
  @user_order.each do |prices|
    amount_owed += prices[:price]
  end
  puts "** $%.2f **".colorize(:light_yellow).on_red.underline % amount_owed
  puts
  @user_order.clear
  puts "**Please press enter to place a second order or press 'Q' to quit.**".colorize(:light_green).on_blue.underline
  puts
  input = gets.strip.downcase
    if input == 'q'
      puts
      quit
    else
      menu
    end
end
menu





#put all your methods on a different page to make the execution look better
