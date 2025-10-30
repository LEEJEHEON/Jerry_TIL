def solution(people, limit):
    answer = 0
    left_p = len(people)-1
    right_p= 0
    people.sort()
    while True:
        if right_p > left_p:
            break
        
        if people[right_p] + people[left_p] > limit : 
            left_p -= 1
            answer += 1
        else :
            left_p -= 1 
            right_p += 1 
            answer += 1 

    return answer

"""
사람들의 무게 리스트를 오름차순 정렬한다.
가장 가벼운 사람과 가장 무거운 사람을 한 보트에 태울 수 있으면 태운다.
태울 수 없으면 무거운 사람만 태운다.
이 과정을 모든 사람이 탈 때까지 반복한다.
"""