def BAEKJOON_F ():
    n, m = map(int, input().split())
    l = [0] * n

    for i in range(m):
        a, b, c = map(int, input().split())
        for j in range(a, b+1):
            l[j-1] = c
    return l

print(BAEKJOON_F())