import re 

class Solution:
    def isPalindrome(self, s: str) -> bool:
        n = re.sub(r'[^a-z0-9]','',s.lower())
        print (n , "++", n[::-1])
        if n == n[::-1]:
            return True
        else:
            return False 