def get_user_input(msg)
  puts msg
  return gets.chomp
end

#converts face cards to appropriate value and numbeered cards to integer

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
puts "Here is your first card #{first_card}"
second_card = get_user_input("enter your second card, please")
puts "Here is your second card #{second_card}"
dealer_card = get_user_input("enter the dealer's card")
puts "Here is the dealer card #{dealer_card}"

converted_first_card = convert_face_card(first_card)
converted_second_card = convert_face_card(second_card)
converted_dealer_card = convert_face_card(dealer_card)


h = "Hit"
s = "Stay"
sp = "Split"
dh = "Double if possible, otherwise split"
ds = "Double if possible, otherwise stay"

hard = {
        5 => {2 => h, 3 => h, 4 => h, 5 => h, 6 => h, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        6 => {2 => h, 3 => h, 4 => h, 5 => h, 6 => h, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        7 => {2 => h, 3 => h, 4 => h, 5 => h, 6 => h, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        8 => {2 => h, 3 => h, 4 => h, 5 => dh, 6 => dh,7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        9 => {2 => dh, 3 => dh, 4 => dh, 5 => dh, 6 => dh, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        10 => {2 => dh, 3 => dh, 4 => dh, 5 => dh, 6 => dh, 7 => dh, 8 => dh, 9 => dh, 10 => h, 11 => h},
        11 => {2 => dh, 3 => dh, 4 => dh, 5 => dh, 6 => dh, 7 => dh, 8 => dh, 9 => dh, 10 => dh, 11 => dh},
        12 => {2 => h, 3 => h, 4 => s, 5 => s, 6 => s, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        13 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        14 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        15 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        16 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => h, 8 => h, 9 => h, 10 => h, 11 => h},
        17 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => s, 8 => s, 9 => s, 10 => s, 11 => s},
        18 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => s, 8 => s, 9 => s, 10 => s, 11 => s},
        19 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => s, 8 => s, 9 => s, 10 => s, 11 => s},
        20 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => s, 8 => s, 9 => s, 10 => s, 11 => s},
        21 => {2 => s, 3 => s, 4 => s, 5 => s, 6 => s, 7 => s, 8 => s, 9 => s, 10 => s, 11 => s},
      }
soft = {
        13 => {2 =>  h, 3 =>  h, 4 => dh, 5 => dh, 6 => dh, 7 =>  h, 8 =>  h, 9 =>  h, 10 =>  h, 11 =>  h},
 	      14 => {2 =>  h, 3 =>  h, 4 => dh, 5 => dh, 6 => dh, 7 =>  h, 8 =>  h, 9 =>  h, 10 =>  h, 11 =>  h},
       	15 => {2 =>  h, 3 =>  h, 4 => dh, 5 => dh, 6 => dh, 7 =>  h, 8 =>  h, 9 =>  h, 10 =>  h, 11 =>  h},
	      16 => {2 =>  h, 3 =>  h, 4 => dh, 5 => dh, 6 => dh, 7 =>  h, 8 =>  h, 9 =>  h, 10 =>  h, 11 =>  h},
	      17 => {2 => dh, 3 => dh, 4 => dh, 5 => dh, 6 => dh, 7 =>  h, 8 =>  h, 9 =>  h, 10 =>  h, 11 =>  h},
 	      18 => {2 =>  h, 3 => ds, 4 => ds, 5 => ds, 6 => ds, 7 =>  s, 8 =>  s, 9 =>  h, 10 =>  h, 11 =>  s},
 	      19 => {2 =>  s, 3 =>  s, 4 =>  s, 5 =>  s, 6 => ds, 7 =>  s, 8 =>  s, 9 =>  s, 10 =>  s, 11 =>  s},
 	      20 => {2 =>  s, 3 =>  s, 4 =>  s, 5 =>  s, 6 =>  s, 7 =>  s, 8 =>  s, 9 =>  s, 10 =>  s, 11 =>  s},
 	      21 => {2 =>  s, 3 =>  s, 4 =>  s, 5 =>  s, 6 =>  s, 7 =>  s, 8 =>  s, 9 =>  s, 10 =>  s, 11 =>  s}
        }
pair = {
        2 => {2 =>  sp, 3 =>  sp, 4 =>  sp, 5 =>  sp, 6 =>  sp, 7 =>  sp, 8 =>  h, 9 =>  h, 10 =>  h, 11 =>  h},
 		    3 => {2 =>  sp, 3 =>  sp, 4 =>  sp, 5 =>  sp, 6 =>  sp, 7 =>  sp, 8 =>  sp, 9 =>  h, 10 =>  h, 11 =>  h},
 		    4 => {2 =>  h, 3 =>  h, 4 =>  sp, 5 =>  sp, 6 =>  sp, 7 =>  h, 8 =>  h, 9 =>  h, 10 =>  h, 11 =>  h},
 		    5 => {2 => dh, 3 => dh, 4 => dh, 5 => dh, 6 => dh, 7 => dh, 8 => dh, 9 => dh, 10 =>  h, 11 =>  h},
 		    6 => {2 =>  sp, 3 =>  sp, 4 =>  sp, 5 =>  sp, 6 =>  sp, 7 =>  sp, 8 =>  h, 9 =>  h, 10 =>  h, 11 =>  h},
 		    7 => {2 =>  sp, 3 =>  sp, 4 =>  sp, 5 =>  sp, 6 =>  sp, 7 =>  sp, 8 =>  sp, 9 =>  h, 10 =>  s, 11 =>  h},
		    8 => {2 =>  sp, 3 =>  sp, 4 =>  sp, 5 =>  sp, 6 =>  sp, 7 =>  sp, 8 =>  sp, 9 =>  sp, 10 =>  sp, 11 =>  sp},
 		    9 => {2 =>  sp, 3 =>  sp, 4 =>  sp, 5 =>  sp, 6 =>  sp, 7 =>  s, 8 =>  sp, 9 =>  sp, 10 =>  s, 11 =>  s},
 		    10 => {2 =>  s, 3 =>  s, 4 =>  s, 5 =>  s, 6 =>  s, 7 =>  s, 8 =>  s, 9 =>  s, 10 =>  s, 11 =>  s},
 		    11 => {2 =>  sp, 3 =>  sp, 4 =>  sp, 5 =>  sp, 6 =>  sp, 7 =>  sp, 8 =>  sp, 9 =>  sp, 10 =>  sp, 11 =>  sp},
 		    }


      if first_card == second_card
        puts pair[converted_first_card][converted_second_card]
      elsif first_card != second_card
        puts hard[converted_first_card][converted_second_card]
      elsif first_card || second_card == "A"
        puts soft[converted_first_card][converted_second_card]
      else
        puts "sorry, not valid"


      end
