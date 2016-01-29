# find all combinations
class Factorial
  def factorial(n)
    # number n!
    u = 1.upto(n).inject(:*)
    # arrray with elements of number n!
    a = u.to_s.split('')
    # sum of the all elements of the number n!
    sum = a.inject(0){ |result, elem| result + elem.to_i }
    puts "#{sum} - sum of the all digits #{n}!"
  end
end

puts 'Enter a number:'
n = gets.chomp.to_i
Factorial.new.factorial(n)
