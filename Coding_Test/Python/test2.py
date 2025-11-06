def solution(sizes):
    answer=0
    max_value= max(map(max,sizes))
    max_p = set() # 제일 큰 값이 여러개 있을 수 있으니 
    
    # 제일 큰 값에 파트너를 찾음 
    for s in sizes:
        if max_value in s :
            s.remove(max_value)
            max_p.add(s[0])
    if len(max_p) > 1: # 제일 큰 값이 여러개라면 그 중 제일 큰거랑 곱해야함 
        return max_value* max(max_p)
    
    max_p = min(max_p) # 제일 큰 값 짝꿍 중 제일 작은거 
    max_p_min = []
    # 제일 작은거보다 큰 것들을 다 찾은 후 min 값
    for s in sizes :
        for a in s :
            if max_p < a :
                max_p_min.append(a)
    return max_value*min(max_p_min)

print(solution([[5, 5], [5, 5], [5, 5]]))
# print(solution([[2, 100], [100, 2], [50, 50]]))

a = set()
a.add(1)
a.add(2)

print(max(a))