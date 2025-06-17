def fiboonacci_series(n):
          a, b=0,1
          if n <= 0:
                    print("Please enter a positive integer")
          elif n == 1:
                    print(a)
          else:
                    print("Fibonacci sequence:")
                    print(a, end=' ')
                    for _ in range(1, n):
                              print(b, end=' ')
                              a, b = b, a + b
num_terms = int(input("Enter the number of terms in the Fibonacci series: ")) 
fiboonacci_series(num_terms)                 
