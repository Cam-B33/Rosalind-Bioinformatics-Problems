# Python for rosalind problems. 

# Recursive fibonnaci function.
def fib(n, k):
    if n == 1 or n == 2:
        return 1
    else:
        return fib(n-1, k) + k*fib(n-2, k)

