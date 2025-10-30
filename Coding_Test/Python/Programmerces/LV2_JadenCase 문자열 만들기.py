def solution(s):
    flag = True # True 면 그 전 문자는 공백 
    answer = ''
    for n in s : 
        if flag and n != ' ': # 두번 연속 공백이 있을 수 있으니 조건 추가
            answer += n.upper()
            flag = False
            continue
        if n == ' ':
            flag = True
        answer += n.lower()
    
    return answer