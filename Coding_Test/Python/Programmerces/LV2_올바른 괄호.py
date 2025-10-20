def solution(s):
    list_s = list(s)
    # 문자 첫번째가 ) 이면 False
    if s[0] == ')':
        return False
    stack = []
    for n in range(len(list_s)):
        # 스택에 값이 없거나, ( 문자가 오면 append
        if len(stack)==0 or list_s[n]=='(' :
            stack.append(list_s[n])
        # 스택에 값이 있고, 마지막 값이 ( 가 아니라면 pop
        if len(stack)!=0 and stack[-1] != list_s[n]:
            stack.pop()

    # stack에 남은 문자가 있다면 false , 없다면 true
    if len(stack) == 0:
        return True
    else :
        return False
    