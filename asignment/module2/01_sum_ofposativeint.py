n = int(input("Enter a positive integer: "))

if n > 0:
    sum = 0
    i = 1
    while i <= n:
        sum += i
        i += 1
    print("The sum of the first", n, "positive integers is:", sum)
else:
    print("Please enter a positive integer greater than 0.")

