from collections import deque

def solution(bridge_length, weight, truck_weights):
    answer = 0
    # 다리 크기 만큼 bridge 변수 생성 
    bridge = deque([0]) * bridge_length
    truck_dq = deque(truck_weights)
    # 현재 다리 위에 무게를 알기 위한 변수 
    weight_on_bridge = 0
    
    # bridge의 값이 없다면 while 문 종료 
    while bridge : 
        answer += 1 
        weight_on_bridge -= bridge.popleft()
        
        # truck_dq에 값이 있을때까지 true
        if truck_dq:
            # 현재 다리 위에 무게랑 truck_dq 첫번째 무게를 합쳤을 때 기준 무게값보다 큰 지 체크
            if weight_on_bridge + truck_dq[0] <= weight :                
                truck = truck_dq.popleft()
                bridge.append(truck)
                # 무게 추가 
                weight_on_bridge += truck 
            else :
                bridge.append(0)
    return answer
        
    
