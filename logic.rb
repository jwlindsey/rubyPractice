#equates to true
value = true || (false && true)
puts value
#why? because (false && true) are ran first since they are in parens
#since they are not the same, that argument equates to false
#then it becomse true || false and when this happens it will always output true
#because with the or operater ||
#false || false =	false
#true || false =	true
#false || true =	true
#true || true = true

#equates to false
value1 = true && (false && true)
puts value1
#why? because (false && true) are ran first since they are in parens
#since they are not the same, that argument equates to false
#then it becomse true && false and when this happens because they are NOT the same the output is false
#because with the and operater both sides must match and be true
#false && false =	false
#true && false =	false
#false && true =	false
#true && true =	true
