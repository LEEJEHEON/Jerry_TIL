def solution(n, lost, reserve):
    # 중복 학생 제거
    real_lost = sorted(set(lost) - set(reserve))
    real_reserve = sorted(set(reserve) - set(lost))
    
    for r in real_reserve:
        for i, l in enumerate(real_lost):
            if abs(r - l) == 1:
                real_lost.pop(i)
                break
                
    return n - len(real_lost)


print(solution(5, [2, 3], [3]))  # 4 출력 예상
print(solution(5, [2, 4], [1, 3, 5]))  # 5 출력 예상
print(solution(3, [3], [1]))  # 2 출력 예상