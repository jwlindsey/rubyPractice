#this script was written by James Lindsey
#this script converts human years to dog years
#formula
#small, medium breeds that weigh less than 50lbs - 5 dog years to 1 calendar year after the first 2 years
#large, giant breeds that weigh more than 51lbs - 7 dog years to 1 calendar year after the first 2 years
#10.5 dogs years for the first 2 calendar years

#Ask for user input
puts "How old is your dog in calendar years?"
cal_years = gets.to_i
puts "About how much does your dog weigh in pounds?"
dog_weight = gets.to_i

#Using if, elseif, else statement for output
if cal_years == 0 || cal_years == 1 || cal_years == 2
    puts "Your dog is #{cal_years * 10.5} years old in human years!"
  else cal_years > 2
      if dog_weight <= 50
        puts "Your dog is #{((cal_years - 2)*5)+21} years old in humans years!"
      else dog_weight >= 51
        puts "Your dog is #{((cal_years - 2)*7)+21} years old in human years!"
      end
end
