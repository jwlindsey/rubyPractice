def call_me_three_times(parameter_1)
  puts((yield parameter_1).inspect)
  puts((yield parameter_1).inspect)
  puts((yield parameter_1).inspect)
end

call_me_three_times("abc", &:reverse)

def check_sign(num)
  num > 0 ? puts "#{num} is poitive" : "#{num} is negative"
end

check_sign(2)
