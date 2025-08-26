#합

def BAEKJOON_F(num):
    total = 0
    for n in range(num):
        total += n+1 
    return total

print (BAEKJOON_F(int(input())))