# Olivia Paunkoff

# Special Topics - Assignment #2

# Prompt the user to enter a three digit positive number.

num <- readline("Please enter a positive three digit number: ")

# Convert the input to numeric.

num <- as.numeric(num)

# Check if the user input is a 3 digit number. If not, print an error message and quit.

if (is.na(num) || num < 100 || num > 999) {
  print("Sorry, your input is invalid. Exiting program.")
} else {

# Use strsplit function to isolate digits in the num string and set them as numeric.
  
digits <- as.numeric(strsplit(as.character(num),"")[[1]])
  
# Assign each digit to a variable. 

a <- digits[[1]]
b <- digits[[2]]
c <- digits[[3]]

# Check if the number is narcissistic (an Armstrong number).
# Assign the sum of the cubes of the individual digits to sum_digit_cube.

sum_dig_cube <- sum((a^3) , (b^3), (c^3)) # Attempting to cube each digit. 

# Use if else statement to check if the input number is equal to the sum of the cubes of the
# ... individual digits.

if (num == sum_dig_cube) {
    print(paste0(num, " is an Armstrong number!"))
  } else { print(paste0(num, " is NOT an Armstrong number!"))} 
} # Bracket for the numeric check

