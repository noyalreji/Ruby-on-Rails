def guess_number guess
    number = 25
    puts "You got it" unless guess != number
    puts "Guess is too high!" unless guess < number+1
    puts "Guess is too low!" unless guess > number-1
    
end

puts guess_number(25)
puts guess_number(40)
puts guess_number(10)
