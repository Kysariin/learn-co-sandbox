products = {
  "Naked Palette" => 54.00,
  
  "Fenty Beauty Fairy Bomb Glittering Pom" => 42.00,
  
  "Milk Makeup Kush High Volume Mascara" => 24.00,
  
  "Stila Stay All Day Liquid Lipstick" => 22.00,
  
  "Anastasia Brow Whiz" => 21.00,
  
  "VIKTOR&ROLF Flowerbomb Perfume" => 165.00,
  
  "Benefit Cosmetics Primer" => 31.00,
  
  "Beauty Blender" => 20.00,
  
  "Urban Decay Naked Palette Collection" => 54.00
}

vib_100 = {
  "Bumble and Bumble Hair Styler" => 100,
  "Kat Von D Perfume" => 100,
  "Urban Decay Mascara" => 100,
}

vib_250 = {
  "Collectible Pin Set" => 250,
  "First Aid Beauty" => 250,
  "Drybar House Favorites" => 250
}

points = []

cart = {}

puts "Welcome to Sephora! What item(s) would you like to purchase?

"
puts products.keys

def cartt(cart, products)
  response = gets.chomp
  puts "Good choice! That is $#{products[response]}. 
    
  Would you like to purchase it?"
  response2 = gets.chomp
    if response2 == "Yes"
      cart[response] = products[response]
      # return cart
      # puts cart.values
      puts "Cool! Your cart contains: 
      #{cart.keys}"
    end
      puts "Are you interested in anything else?" 
      response2 = gets.chomp
    if response2 == "Yes"
      puts "Okay, let's look at our options."
      puts "What else would you like to buy? 
        
      Your options are:"
      puts products.keys
      cartt(cart, products)
    end
    
    if response2 == "No"
      puts "Okay! Thank you for shopping at Sephora! 
        
      Your total is: $#{cart.values.inject(:+)}"
        
    end 
    
    response3 = gets.chomp
    
    if response3 =="Yes"
      puts "Okay! Your options are #{products.keys}"
    elsif response3 == "No"  
      puts "Thank you so much for shopping at Sephora! 
        Your total is: $#{cart.values.inject(:+)}. Would you like to look at the VIB items redeemable by points?"
        response4 = gets.chomp
          if response4 == "Yes"
            puts
      else 
        "Thank you for looking - have a great day!"
      end
    end
    
    sleep(1.0)
    
    # def vib(cart, products, points)
  puts "Oh, yeah! I nearly forgot! We have some items redeemable via points since you're a VIB member. Would you like to see what's available with your current point count?"
  response5 = gets.chomp
  points << cart.values.inject(:+)
    if response5 == "Yes"
      puts "Cool! Your points value is #{points}. What would you like to get?"
        if points > 100 && points < 250
          puts vib_100
        end 
        if points > 100 && points > 250
          puts vib_100
          puts vib_250
        end 
        # else
        #   puts "Why are you here? You have no points, honey."
        # end
    else
      puts "Alright! See ya later!"
    end
end

# def vib(cart, products, points)
#   puts "Oh, yeah! I nearly forgot! We have some items redeemable via points since you're a VIB member. Would you like to see what's available with your current point count?"
#   response5 = gets.chomp
#   points << cart.values.inject(:+)
#     if response5 == "Yes"
#       puts "Cool! Your points value is #{points}. What would you like to get?"
#         if points > 100 && points < 250
#           puts vib_100
#         end 
#         if points > 100 && points > 250
#           puts vib_100
#           puts vib_250
#         end 
#         # else
#         #   puts "Why are you here? You have no points, honey."
#         # end
#     else
#       puts "Alright! See ya later!"
#     end
#   end

  
cartt(cart, products)
# vib(cart, products, points)






