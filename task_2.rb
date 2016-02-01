require_relative './dijkstra.rb'

puts 'Enter the number of tests..'
s = gets.chomp.to_i

s.times do
  puts 'Enter the number of cities..'
  n = gets.chomp.to_i

  graph = Array.new(n) { Array.new(n) }
  cities = []
  
  0.upto(n - 1) do |i|
    puts 'Enter city name..'
    name = gets.chomp

    cities << name

    puts "Enter the number of neighbours of city #{name}.."
    p = gets.chomp.to_i

    p.times do
      puts "Enter index of a city connected to #{name} and the transportation cost.."
      nr_cost = gets.chomp.split(' ')

      nr = nr_cost.first.to_i
      cost = nr_cost.last.to_i

      graph[i][nr - 1] = cost
    end
  end

  matrix_of_road = []

  0.upto(n - 1) do |i|
    0.upto(n - 1) do |j|
      unless graph[i][j].nil?
        matrix_of_road << [cities[i], cities[j], graph[i][j]]
      end
    end
  end

  puts 'Enter the number of paths to find..'
  r = gets.chomp.to_i

  outputs = []

  0.upto(r - 1) do |i|
    puts 'Enter source - destination..'
    source_destination = gets.chomp.split(' ')

    source = source_destination.first
    destination = source_destination.last

    ob = Dijkstra.new(source, destination, matrix_of_road)
    outputs[i] = ob.cost
  end

  outputs.each { |output| puts output }
end