# 동전 0

def BAEKJOON_F () :
    # 동전 갯수와 동전 목표값 
    c, t = map(int, input().split()) 
    coin_list = []
    answer = 0 
    #동전 갯수만큼 동전의 가치들 입력
    for n in range(c):
        coin_list.append(int(input()))
    
    # 반대로 돌려서 큰 것 부터 비교 (최솟값을 뽑아야 하기에)
    coin_list.reverse()

    for m in coin_list:
        # 동전의 가치가 목표값보다 크면 다음 작은 값으로 넘김 
        if m > t :
            continue
        # 목표값이 0이 되면 더이상 동전 갯수를 세는 것이 의미 없으므로 break
        elif t==0 :
            break
        # 몫 값만 동전갯수로 answer에 더함
        answer += t//m
        # 목표값도 동전갯수로 제외된 나머지 값으로 계속 진행
        t -= (t//m)*m      
    return answer

print(BAEKJOON_F())