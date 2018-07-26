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
      puts cart.values
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
        
      cartt(cart, products)
      
    if response3 =="Yes"
      puts "Okay! Your options are #{products.keys}"
    elsif response3 == "No"  
      puts "Thank you so much for shopping at Sephora! 
        Your total is: $#{cart.values.inject(:+)}"
      else 
        "Thank you for looking - have a great day!"
      end
    end
end
cartt(cart, products)