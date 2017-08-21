require 'pry'

ENTREE = [
  {name: 'Meat Loaf', price: 7.00},
  {name: 'Ahvokado Toast', price: 15.00},
  {name: 'Chopped Cale Salad', price: 18.00}
   ]
SIDE = [
  {name: "Seeweed Salad with Toe Food", price: 4.00},
  {name: "Bae Kahn Raps", price: 5.00},
  {name: "Luke'n Leia's S.S. Enter_Prize Charcuterie Bored", price: 8.00}
   ]

@user_order = [] # this is the array that all of the users inputs will be put into

def menu
  puts "Welcome to The HodgePodge Cafeteria"
  puts "Please select an Entree!"
  main_dish
  puts "And for your first Side?"
  side_dish
  puts "What other side would you like?"
  side_dish_2
  puts "Alright! So that will be:"
  order
  puts "Your grand total comes to:"
  total
end

def main_dish
  ENTREE.each_with_index do |key, index|
    index = index + 1
    puts "#{index}, #{key[:name]}, #{key[:price]}"
  end
  input = gets.strip #gets the users input
    case input  #idicates that
    when "1"    #when the user puts 1 in the text it will add the first index item to the user_order array.
      @user_order << (ENTREE[0])
    when "2"    #this will do the same as the first one but for the second item in the index
      @user_order << (ENTREE[1])
    when "3"  #this will do the same as the second and first but for the third item in the index.
      @user_order << (ENTREE[2])
    else        #if 1, 2, or 3 is not typed in it will return the following:
      raise "Please select an item included under the Entree menu."
    end
  end


def side_dish
  SIDE.each_with_index do |key, index|
    index = index + 1
    puts "#{index}, #{key[:name]}, #{key[:price]}"
  end
  input = gets.strip #gets the users input
    case input  #idicates that
    when '1'    #when the user puts 1 in the text it will add the first index item to the user_order array.
      @user_order << (SIDE[0])
    when '2'    #this will do the same as the first one but for the second item in the index
      @user_order << (SIDE[1])
    when '3'    #this will do the same as the second and first but for the third item in the index.
      @user_order << (SIDE[2])
    else        #if 1, 2, or 3 is not typed in it will return the following:
    raise "Please select an item included under 'Sides'."
  end
end

def side_dish_2
  SIDE.each_with_index do |key, index|
    index = index + 1
    puts "#{index}, #{key[:name]}, #{key[:price]}"
  end
  input = gets.strip #gets the users input
    case input  #idicates that
    when '1'    #when the user puts 1 in the text it will add the first index item to the user_order array.
      @user_order << (SIDE[0])
    when '2'    #this will do the same as the first one but for the second item in the index
      @user_order << (SIDE[1])
    when '3'    #this will do the same as the second and first but for the third item in the index.
      @user_order << (SIDE[2])
    else        #if 1, 2, or 3 is not typed in it will return the following:
    raise "Please select an item included under 'Sides'."
  end
end

def order
  @user_order.each_with_index do |key, index|
    puts "#{index + 1}, #{key[:name]}, #{key[:price]}"
  end
end

def total
  amount_owed = 0.0
  @user_order.each do |prices|
    amount_owed += prices[:price]
  end
  puts amount_owed
end

menu


#create a second side dish method to allow the user to return to incase they put in an invalid entry
#it should be the exact same as the other
#but named differently.
#also you need to add a $ to the prices. i am not certain how to do this but yeah get it done.
#colorize the page
#add in UI/UX to the page and make it look better
#put all your methods on a different page to make the execution look better
#good luck bro. you copied someone else's work and re wrote it so make sure you start again and make a new one from scratch
#try not to use this one for refrence if at all piossible
