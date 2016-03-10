def get_user_input(msg)
  puts msg
  return gets.chomp
end

def convert_face_card(user_input)
  user_input = user_input.upcase

  if user_input == "K" || user_input == "Q" || user_input == "J"
    return 10
  elsif user_input == "A"
    return 11
  else
    return user_input.to_i
  end
end





first_card = get_user_input("enter your first card, please")
puts first_card
second_card = get_user_input("enter your second card, please")
puts second_card
dealer_card = get_user_input("enter the dealer's card")
puts dealer_card

converted_first_card = convert_face_card(first_card)
converted_second_card = convert_face_card(second_card)
converted_dealer_card = convert_face_card(dealer_card)
puts converted_first_card
puts converted_second_card
puts converted_dealer_card
