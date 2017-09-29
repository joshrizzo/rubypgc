target = rand(100) + 1
guess = 0
guesses = 0
max_guesses = 10

puts "Welcome to 'Get My Number!'"
print "What's your name? "
name = gets.chomp
puts "Welcome, #{name}!"
puts 'Guess a random number between 1 and 100.'

until guesses == max_guesses || guess == target
  puts "You have #{max_guesses - guesses} guesses remaining."
  print 'Your guess? '
  guess = gets.to_i
  guesses += 1
  puts 'Your guess was too high!' if guess > target
  puts 'Your guess was too low!' if guess < target
end

if guess == target
  puts "Your guess CORRECT!  You got it in #{guesses} guesses!"
else
  puts "You failed to guess the number correctly in #{max_guesses} guesses."
end
