# 영수증

def BAEKJOON_F():
    total = int(input())
    r_total = 0 
    for n in range(int(input())):
        a, b  = map(int,input().split())
        r_total += a*b 

    if r_total == total:
        return "Yes" 
    else :
        return "No"

print (BAEKJOON_F())