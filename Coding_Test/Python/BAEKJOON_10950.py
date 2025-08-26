# A+B-3

def BAEKJOON_F(num):
    for n in range(num): 
        print (sum(map(int,input().split())))

BAEKJOON_F(int(input()))

# 더하는 값이 2개만 있기에, A + B 가 sum 보다 8밀리초 빠름 (이건 44ms)