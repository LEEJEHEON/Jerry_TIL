# def fibonacci(n):
#         if n <= 1 :
#             return n
#         else :
#             return fibonacci(n-2)+fibonacci(n-1)

# def solution(n):
#     return fibonacci(n) % 1234567


def solution(n):
    a =0
    b = 1
    if n<=1 :
        return n
    else :
        for _ in range(n):
            a, b = b, a+b
        return a % 1234567
    


