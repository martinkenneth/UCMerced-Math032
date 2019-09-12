montyswitch = function(i)
  
{
  # set up vector of doors
  n = 3
  doors = c(1: n)
  
  # print(doors)
  # doors = c(1,2,3)
    
  # randomly pick where the car is
  cardoor = sample(doors, 1, replace = FALSE, prob = NULL) 
  print(cardoor)
  
  # randomly pick player’s door
  playerdoor = sample(doors, 1, replace = FALSE, prob = NULL) 
  print(playerdoor)
  
  # pick host’s door: not player's door, not car door
  hostdoor = doors[-c(cardoor, playerdoor)]
  print(hostdoor)
  
  if (length(hostdoor) > 1){
    hostdoor = sample(hostdoor,1)
    print(hostdoor)
  }
  print(doors[-c(hostdoor, playerdoor)])
  
  # finalchoice = doors[-c(hostdoor, playerdoor)]
  finalchoice = sample(doors[-c(hostdoor, playerdoor)],1, replace = FALSE, prob = NULL)
  print(finalchoice) 
  
  if (finalchoice == cardoor) 
    return(TRUE)
  
  else 
    return(FALSE)
  
}
# validate function:
# run experiment 10000 times
# results = sapply(c(1:10000), montystay)

results = replicate(1, montyswitch(1), simplify = "array")

print (mean(results))
#print((0)*(1/3) + (1)*(1/3) + (1)*(1/3))

