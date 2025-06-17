def odd_series_sum(n):
    global sum_odd
    global sum_even
    sum_odd = 0
    if n <= 0:
        print("Please enter a positive integer")
    else:
        print("Odd numbers up to", n, ":")
        for i in range(1, n + 1, 2):
            sum_odd+=i
            print(i, end=' ')
        print() 
def even_series_sum(n):
    global sum_even
    sum_even = 0

    if n <= 0:
        print("Please enter a positive integer")
    else:
        print("Even numbers up to", n, ":")
        for i in range(2, n + 1, 2):
            sum_even+=i

            print(i, end='')
        print()
n= int(input("Enter a positive integer: "))
odd_series_sum(n)
even_series_sum(n)
print("Sum of odd numbers:", sum_odd)
print("Sum of even numbers:", sum_even)


                 
