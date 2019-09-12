montystay = function(i)
    
{
  # set up vector of doors
  n = 3
  doors = c(1: n)
    
  # randomly pick where the car is
    cardoor = sample(doors, 1, replace = FALSE, prob = NULL)
    
  # randomly pick player’s door
    playerdoor = sample(doors, 1, replace = FALSE, prob = NULL)
    
  if (playerdoor == cardoor) 
    return(TRUE)
    
  else 
    return(FALSE)
}
  
# validate function:
# run experiment 10000 times
# results = sapply(X=c(1:10000),FUN = montystay)

results = replicate(10000, montystay(1), simplify = "array")

# print computed probability
print (mean(results))

print((1)*(1/3) + (0)*(1/3) + (0)*(1/3))

