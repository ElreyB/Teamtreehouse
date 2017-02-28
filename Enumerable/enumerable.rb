array = [1,2,3,4,5,6]
hash = {
	name: "Elrey",
	learning: "Ruby",
	location: "Home"
}

# .each
array.each {|item| puts "Item: #{item}"}
puts "-----------"
hash.each {|key, value| puts "#{key}: #{value}"}
puts "-----------"

# .member?
p array.member?(3)

p array.member?(46)

p hash.member?(:name)

p hash.member?(:names)
puts "-----------"

# .all? vs .any?

p array.all? {|item| item > 3}

p array.any? {|item| item > 3}

p hash.any? {|key,value| key == :name}

p hash.any? {|key,value| value == "Ruby"}
puts "-----------"

# .detect same as .find
p array.detect{|item| item > 3}

p array.find{|item| item > 3}
puts "-----------"

# .find_all same as .select
p array.find_all{|item| item > 3}

p array.select{|item| item > 3}
puts "-----------"

# .map always return an array
p array.map{|item| item * 2}

p array.map{|item| item * 2}.map{|item| item.to_s}

p hash.map{|key, value| value}

p hash.map{|key, value| key}

p hash.map{|key, value| value}.map{|item| item.length}
puts "-----------"

# .inject
p array.inject{|sum, element| sum += element}

p array.inject(10){|sum, element| sum += element}
puts "-----------"

# .chunk
p array.chunk{|item| item.odd?}.each{|even, array| p [even, array]}
puts "-----------"

# .collect
p array.collect{"Elrey"}
puts "-----------"

