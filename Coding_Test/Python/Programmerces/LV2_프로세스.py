def find_big_number (list_n,a):
    for n in list_n :
        if n > a :
            return True
    return False

def solution(priorities, location):
    answer = 1 
    
    while True: 
        n = priorities[0]
        # 큰 숫자가 있는지 체크 
        if not(find_big_number(priorities,n)):
            # 큰 숫자가 없고, 찾을려는 숫자가 맞다면 
            if location == 0:
                return answer 
            # 큰 숫자는 없는데, 찾을려는 숫자가 아니면 
            else : 
                priorities = priorities[1:]
                answer += 1
                location -= 1
        # 큰 숫자가 있는 경우
        else : 
            temp_list = priorities
            priorities= temp_list[1:]
            priorities.append(temp_list[0])
            
            if location == 0 :
                location = len(priorities)-1
            else :
                location -= 1   

"""---------------------------다른 풀이-----------------------------"""
from collections import deque

def solution(priorities, location):
    dq = deque(priorities)
    answer = 1
    
    while True:
        # any = 1개 라도 true 면 true
        if any(dq[0] < m for m in dq) :
            dq.append(dq[0])
            dq.popleft()
            if location == 0: 
                location = len(dq)-1
            else : 
                location -= 1
        else : 
            if location == 0:
                return answer 
            else :
                location -= 1
                dq.popleft()
                answer += 1 