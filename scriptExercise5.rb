#this is written by James Lindsey
#this script is a loop that will get the sum of all numbers 0 - 100 (including 100) = 5050
#at the end of the loop it will output "The sum is: sum"

n=0
sum=0
#This is one way
#while n < 100
#  sum = sum + n + 1
#  n = n + 1
#  if n == 100
#    puts "The sum is: #{sum}"
#  end
#end
#we could also do it this way
while n < 101
  sum = ((n * (n + 1))/2)
  n = n + 1
  if n == 101
    puts "The sum is: #{sum}"
  end
end
