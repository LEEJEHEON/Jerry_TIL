# 1로 만들기 

def BAEKJOON(num):
    three = Split_three(num)
    two = Split_two(num)

    if  three > two :
        return two
    else :
        return three
    
def Split_three(num):
    cnt = 0
    while num !=1 :
        if num%3==0 :
            num = num // 3
        elif num%2==0 :
            num = num // 2
        else :
            num -= 1
        cnt += 1 
    return cnt

def Split_two(num):
    cnt = 0
    while num !=1 :
        if num%2==0 :
            num = num // 2
        elif num%3==0 :
            num = num // 3
        else :
            num -= 1
        cnt += 1 
    return cnt

print(BAEKJOON(int(input())))
