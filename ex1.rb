#once you have created a file in the same directory called example.txt
#run this code by
#james@Darkwing-duck-linux:~/school/firehose/rubyPractice [master|✚ 1…1⚑ 2]$ ruby #ex1.rb "example.txt"
#Here's your file example.txt:
#This is stuff I typed into a file.
#It is really cool stuff.
#Lots and lots of fun to have in here.
#Type the filename again: example.txt
#This is stuff I typed into a file.
#It is really cool stuff.
#Lots and lots of fun to have in here.


example = ARGV.first

txt = open(example)

puts "Here's your file #{example}:"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
