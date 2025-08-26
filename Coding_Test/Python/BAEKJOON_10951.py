# A+B-4
import sys

def BAEKJOON_F ():
    while True:
        line = sys.stdin.readline()
        if not line:
            break
        a, b = map(int,line.strip().split())
        print (a+b)

BAEKJOON_F()

""" 
sys.stdin.readline() : 한 줄을 입력받고, 개행 문자를 포함해 문자열 반환  
속도가 input() 에 비해서 빠르나, 실생활에서는 잘 안쓰인다.
해당 함수는 빈 입력 시 빈 문자열을 반환한다. (input 은 EOFError 발생)
(EOF : End of File)
""" 