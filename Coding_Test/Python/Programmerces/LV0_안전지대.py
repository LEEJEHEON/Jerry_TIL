def solution(board):
    answer = 0
    for i in range(len(board)):
        for j in range(len(board[i])):
            if board[i][j] == 1:
                for k in range(i-1, i+2):
                    print ("k : ", k)
                    for l in range(j-1, j+2):
                        print ("l : ", l)
                        if 0 <= k < len(board) and 0 <= l < len(board[i]):
                            if board[k][l] == 0:
                                board[k][l] = 2
    for i in range(len(board)):
        for j in range(len(board[i])):
            if board[i][j] == 0:
                answer += 1
    return answer