#written by James Lindsey
#Celcius to Fahrenheit converter
#((Celcius)*1.8)+32=Fahrenheit
#((2c)*1.8)+32=35.6f

val1 = "Please enter degrees in Celcius: "
puts val1
val2 = gets.to_f

def c_converter_f(c)
  return ((c)*1.8)+32
end

val3 = "The temperature is #{c_converter_f(val2)} degrees fahrenheit"
puts val3
