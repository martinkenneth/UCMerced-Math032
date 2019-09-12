# source code demo

x = 1
y = x + 1
print(y)


# vectors
v = c(51,49,20,18,15) # Storing ages in a vector
print(v)

v = c(1:100) # Storing numbers 1 to 100 in order
print(v)

v = 0*c(1:100) # Vector containing 100 zeros
w = vector(mode = "numeric", length = 100) # Storing 100 zeros into w
print(v)
print(w)


# vectorization
v = c(1:10) # Store numbers 1 to 10
w = v^2	# Square each number in vector v
print(w)
# This can be done with sums, products, powers, and other operations


# matrices
temps = matrix(0, nrow=5, ncol=5) # Creates a 5x5 matrix
temps[,1] = c(102,99,94,91,91) # stores values into column 1
temps[,2] = c(71,85,67,68,68)
temps[,3] = c(82,83,79,79,79)
temps[,4] = c(112,110,108,104,104)
temps[,5] = c(82,78,71,84,82) # stores values into column 5
print(temps)




