class Solution:
    def isValid(self, s: str) -> bool:
        str_list = list(s)
        t = []
        t.append(str_list[0])
        print (str_list)
        for s in range(1,len(str_list)):
            
            if len(t) == 0 :
                t.append(str_list[s])

            elif (t[-1] == '(' and str_list[s] == ')') or (t[-1] == '{' and str_list[s] == '}') or (t[-1] == '[' and str_list[s] == ']') :
                    t.pop()
            else :
                t.append(str_list[s])

        if len(t) == 0 :
            return True
        else :
            return False


