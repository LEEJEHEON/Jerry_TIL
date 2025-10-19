def solution(n):
    answer = 0
    for i in range(1, n+1):
        cal = 0
        while cal < n:
            cal += i
            i += 1
            if cal == n:
                answer += 1
                break
    return answer