def solution(phone_number):
    temp = '*'*len(phone_number)
    answer =temp[:-4] + phone_number[-4:]
    return answer