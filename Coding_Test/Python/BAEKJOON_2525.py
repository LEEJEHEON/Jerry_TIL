# 오븐 시계
t = input().split(" ")
n_t = int(input())

if int(t[1])+n_t<60 :
    t[1] = int(t[1])+n_t
else : 
    t[0] = int(t[0])+(int(t[1])+n_t)//60 # 몫값만 시간에 더함
    t[1] = (int(t[1])+n_t)%60 # 시간으로 빠진 나머지값만 분에 넣음
    if int(t[0])+1 > 24 : # 24시를 넘어간 경우 
        t[0] -= 24

print(*t) 