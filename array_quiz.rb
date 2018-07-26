FOUR_LETTER_COUNTRIES = [
  "Chad",
  "Cuba",
  "Greenland",
  "Iraq",
  "Mali",
  "Oman",
  "India"]
  
  def add_fiji
    FOUR_LETTER_COUNTRIES << "Fiji"
  end
  add_fiji
  def insert_iraq
    FOUR_LETTER_COUNTRIES.insert(4, "Iran")
  end
  insert_iraq
  def delete_india
    FOUR_LETTER_COUNTRIES.delete("India")
  end
  delete_india
  def reverse_order
    FOUR_LETTER_COUNTRIES.reverse
  end
  reverse_order
  def replace_greenland
    FOUR_LETTER_COUNTRIES[2] = "Togo"
  end
  replace_greenland
  def add_laos
    FOUR_LETTER_COUNTRIES << "Laos"
  end
  add_laos
  def reverse_again
    FOUR_LETTER_COUNTRIES.reverse
  end
  reverse_again
  def add_peru
    FOUR_LETTER_COUNTRIES.insert(0, "Peru")
  end
  add_peru
  puts FOUR_LETTER_COUNTRIES