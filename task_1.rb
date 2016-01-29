# class binomial coefficient
class BC
  # (2n)!/(n!*(n+1)!)
  
  # correct_bracket_sequence
  def cbs(n)
    factorial(2 * n) / (factorial(n) * factorial(n + 1))
  end
  
  private

  def factorial(n)
    1.upto(n).inject(:*)
  end
end

puts 'Enter a number..'
m = gets.chomp.to_i
m <= 0 ? (puts 'select a number greater than 0') : (puts BC.new.cbs(m))
