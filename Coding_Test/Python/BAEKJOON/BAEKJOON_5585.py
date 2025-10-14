# 거스름돈

def BAEKJOON_F(money):
    coin = [500, 100, 50, 10, 5, 1]
    result = 0 
    c_money = 1000-money

    for n in coin :
        if c_money//n > 0 : 
            result += c_money//n
            c_money = c_money-((c_money//n)*n)
        if c_money==0 :
            break
        
        # 모법 답안 
        #result += c_money//n
        #c_money %= n
    return result


print(BAEKJOON_F(int(input())))

