montyswitch = function(i)
  
{
  # set up vector of doors
  #n = 3
  #doors = c(1: n)
  
  # print(doors)
  doors = c(1,2,3)
    
  # randomly pick where the car is
  cardoor = sample(doors, 1, replace = FALSE, prob = NULL) 
    
  # randomly pick player’s door
  playerdoor = sample(doors, 1, replace = FALSE, prob = NULL) 
    
  # pick host’s door: not player's door, not car door
  hostdoor = doors[-c(cardoor, playerdoor)] 
    
  if (length(hostdoor) > 1)
    hostdoor = sample(hostdoor,1)
  
  finalchoice = doors[-c(hostdoor, playerdoor)]
    
  if (finalchoice == cardoor) 
    return(TRUE)
  
  else 
    return(FALSE)
  
}
# validate function:
# run experiment 10000 times
# results = sapply(X=c(1:10000),FUN = montystay)

results = replicate(10000, montyswitch(1), simplify = "array")
# sum (results == TRUE)
# print computed probability
print (mean(results))
print((0)*(1/3) + (1)*(1/3) + (1)*(1/3))
