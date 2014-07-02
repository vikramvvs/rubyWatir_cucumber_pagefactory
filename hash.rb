# a=["a","e","i","o","u"]
# a.each{|x|}
# a.each{|x,i| puts "#{x} is at position #{i}"}

# info = {shalini: 4, Roopa: 27, Vikram: 34}
# info.each{|name,age| puts "#{name} is #{age} years old"}

# [1,3,5,7,9].find_index{|x| x>5}
# a.find_index {|x| x>50}
a=[5,3,9,7,1].sort
puts a
# [1,3,5,7,9].find_all { |x| x > 5 }
# [1,3,5,7,9].reject { |x| x > 5 }
# [1,3,5,7,9].find { |x| x > 5 }
x=[1,3,5,7,9].index {|x| x>5}
puts x