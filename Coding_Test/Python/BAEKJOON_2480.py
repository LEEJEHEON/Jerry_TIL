# 주사위 세개
def BAEKJOON_F (a):
    if int(a[0])==int(a[1])==int(a[2]) : 
        return 10000+int(a[0])*1000
    elif int(a[0])==int(a[1]):
        return 1000+int(a[0])*100
    elif int(a[1])==int(a[2]):
        return 1000+int(a[1])*100
    elif int(a[0])==int(a[2]):
        return 1000+int(a[0])*100
    else :
        return int(max(a))*100

print(BAEKJOON_F(input().split(" ")))
