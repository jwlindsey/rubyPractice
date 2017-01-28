the_count = [1, 2, 3, 4, 5]
for n in the_count
  puts "This is count #{n}"
end

$i
$i = 0
def loop(x)
  while $i < x
    $i +=1
    puts "x"
  end
end

loop(4)

animals = ["bear", "tiger", "fish", "owl", "platypus"]

puts """
I once was a young #{animals[0]} who had a quarrel with a #{animals[1]} over a #{animals[2]} in the river. So we went to the wise #{animals[3]} and he slapped the #{animals[1]} in the face with a #{animals[4]} and I went home happy.
"""
