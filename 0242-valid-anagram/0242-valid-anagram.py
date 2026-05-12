class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        s_dic = {}
        t_dic = {}
        
        for n in s :
            s_dic[n] = s_dic.get(n, 0) + 1
        for n in t :
            t_dic[n] = t_dic.get(n, 0) + 1

        if s_dic == t_dic:
            return True 
        else:
            return False 
        