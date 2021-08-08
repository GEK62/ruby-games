# Игра угадай число.
# Автор: Gek!

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets

name = input.chomp

puts "Welcome, #{name}!"

# Получение имени игрока и вывод приветствия.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Отслеживание количества попыток.
num_guesses = 0

# Признак продолжения игры.
guessed_it = false

# Сохранение случайного числа.
puts "You've got #{10 - num_guesses} guesses left."
print "Make a guess: "
guess = gets.to_i

# Сравнение введенного числа с загаданным
# и вывод соответсвующего сообщения
if guess < target
    puts "Oops. Your guess was LOW."
elsif guess > target
    puts "Oops. Your guess was HIGH."
elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number #{num_guesses} guesses!"
    guessed_it = true
end