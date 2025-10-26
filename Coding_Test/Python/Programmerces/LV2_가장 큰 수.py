import itertools

def solution(numbers):
    number_list = set()
    for i in range(1,len(numbers)):
        npr = itertools.permutations(numbers,i)
        print (list(npr))
        for g in  list(npr):
            number_list.add(int(''.join(g)))
    print (number_list)
    answer = ''
    return answer


print ("SOL " , solution([6,10,2]))