def make_one(n):
    dp = [0] * (n+1)  # dp[i]는 i를 1로 만드는 최소 연산 횟수
    
    for i in range(2, n+1):
        # 1을 빼는 경우
        dp[i] = dp[i-1] + 1
        
        # 2로 나누어 떨어지면 최소값 비교
        if i % 2 == 0:
            dp[i] = min(dp[i], dp[i//2] + 1)
        
        # 3으로 나누어 떨어지면 최소값 비교
        if i % 3 == 0:
            dp[i] = min(dp[i], dp[i//3] + 1)

        print (i , ": ")
        print (dp)
        

    return dp[n]
    
n = int(input())
print(make_one(n))