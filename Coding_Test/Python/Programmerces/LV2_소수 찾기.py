from itertools import permutations

def solution(numbers):
    answer = 0
    
    # 경우의 수 숫자를 모두 구함
    number_list = set()
    for i in range(1, len(numbers) + 1): 
        perms = permutations(numbers, i)
        for p in perms:
            num = int(''.join(p))
            number_list.add(num)
            
    # 소수 판별 
    for i in number_list:
        check_flag = True
        if i > 1 : 
            for n in range(2,i):
                if i%n == 0:
                    check_flag = False
                    break
            if check_flag : 
                answer += 1
    return answer