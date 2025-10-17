# 집합 사용 

def solution(a, b, c, d):
    check = set([a,b,c,d])
    list_dice = [a,b,c,d]
    if len(check)==1:
        return 1111*list(check)[0] 
    else : 
        for n in check :
            if list_dice.count(n)==2:
                if len(check)==2: # 주사위 2개씩 같은 값인 경우
                    check = list(check)
                    return (check[0]+check[1]) * abs(check[0]-check[1])    
                else : # 주사위 2개 값만 같고 나머지는 틀린 경우 
                    check.remove(n) # 중복된 값 제거
                    check = list(check) # list 변환
                    return check[0]*check[1]
            elif list_dice.count(n)==3 :
                check.remove(n) # 중복된 값 제거 
                return (10*n+list(check)[0])**2
    return min(list(check))  # 모든 주사위 수가 다 틀린 경우 