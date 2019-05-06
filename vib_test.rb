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

points = 150

cart = {}



def vib(cart, products, points)
  puts "Oh, yeah! I nearly forgot! We have some items redeemable via points since you're a VIB member. Would you like to see what's available with your current point count?"
  response5 = gets.chomp
  points << carts.values.inject(:+)
    if response5 == "Yes"
      puts "Cool! Your points value is #{points}. What would you like to get?"
        if points > 100 && points < 250
          puts vib_100
        elsif points > 100 && points > 250
          puts vib_100
          puts vib_250
        else
          puts "Why are you here? You have no points, honey."
        end
    else
      puts "Alright! See ya later!"
    end
  end
  vib(cart, products, 250)