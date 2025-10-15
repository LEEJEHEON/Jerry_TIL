"""
def solution(X):

    weekend_count = 0

    for day in range(365):
        weekday = ((X-1+day)%7) +1
        if weekday in (6,7):
            weekend_count +=1
        print ("day : ", day , "weekday : ", weekday)


    return weekend_count

# 1/1 : 수요일 4 토요일
# -1 이유 > %7 나머지가 0은 월요일로 판단하기 위해 
# + day 1월 1일 이후 몇 일이 지났는지 알기 위해
# +1 1~7이 범위였으니 +1로 맞춤 

#solution(3)



# 1: 월 .. 7: 일 

--------------------------------------
"""
def solution(X, H):

    weekend_count = 0

    for day in range(10):
        weekday = ((X-1+day)%7) +1
        if weekday in (6,7):
            weekend_count +=1
    # 추가 주말 리스트 처리 (중복 제외)
    seen = set()
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    for m, d in H:
        day_of_year = sum(days_in_month[:m-1]) + (d-1)
        seen.add(day_of_year)
        print("c_seen :" , seen)
        print("days_in_month : " , days_in_month[:m-1])
    # 기본 주말과 겹치지 않은 추가 날짜만 카운트

    print("m_seen :", seen)

    for day_of_year in seen:
        weekday = ((X - 1 + day_of_year) % 7) + 1
        if weekday not in (6, 7):
            weekend_count += 1
    return weekend_count


print("weekend_count" , solution(3, [[3,1],[1,3]]))

"""
--------------------------------------


def solution(X, H):

    weekend_count = 0
    days_in_year = 365
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    def date_to_dayofyear(m, d):
        if not (1 <= m <= 12):
            return None
        if not (1 <= d <= days_in_month[m - 1]):
            return None
        return sum(days_in_month[:m - 1]) + d - 1

    weekend_days = set()
    for day in range(days_in_year):
        weekday = ((X - 1 + day) % 7) + 1
        if weekday in (6, 7):  # 토, 일
            weekend_days.add(day)
            
    # 추가 주말 리스트 처리 (중복 제외)
    extra_days = set()
    for m, d in H:
        day_of_year = date_to_dayofyear(m, d)
        if day_of_year is not None:
            extra_days.add(day_of_year)

    temp_holidays = set()
    seen = weekend_days | extra_days

    for day in extra_days:
        weekday = ((X - 1 + day) % 7) + 1

        # 토요일이면 이전 가장 가까운 평일 찾기
        if weekday == 6:
            prev_day = day - 1
            while prev_day >= 0:
                wk = ((X - 1 + prev_day) % 7) + 1
                if wk not in (6, 7) and prev_day not in seen:
                    temp_holidays.add(prev_day)
                    break
                prev_day -= 1

        # 일요일이면 이후 가장 가까운 평일 찾기
        elif weekday == 7:
            next_day = day + 1
            while next_day < days_in_year:
                wk = ((X - 1 + next_day) % 7) + 1
                if wk not in (6, 7) and next_day not in seen:
                    temp_holidays.add(next_day)
                    break
                next_day += 1

    weekend_count = len(seen)
    # 임시 공휴일 포함하되 중복 제외
    for day in temp_holidays:
        if day not in seen:
            weekend_count += 1

    return weekend_count


    -------------------------
"""
"""

주요 알고리즘 및 기법
날짜 인덱스 변환
월과 일을 1년 내의 연속된 일수 인덱스(0부터 시작)로 변환하여, 날짜 비교와 계산을 효율적으로 수행합니다. (date_to_dayofyear, dayofyear_to_md 함수)

집합(set) 연산 활용
주말과 추가 공휴일 날짜를 집합 구조에 저장해 효율적으로 휴일 판단에 활용합니다.
집합 기반으로 빠르게 휴일 존재 여부를 체크하고 중복을 방지합니다.

요일 계산

((첫날요일−1+일수)mod7)+1 를 활용해 각 날짜의 요일 판단합니다.

탐욕적 후보 탐색 (Greedy Search)
월급일 조정 시 후보 평일을 월급일 이전과 이후에서 가장 가까운 평일을 각각 탐색 후, 거리 기반으로 최적 후보를 선정합니다.
이렇게 함으로써 당장 충족 가능한 조건을 우선 적용해 빠르고 간단한 해결을 추구합니다.

경계 조건 고려와 제한
월별 범위 내에서만 조정하도록 구현해 조건부 탐색 범위를 제한합니다.
전년도, 다음 년도 넘어가는 날짜는 아예 검증 대상에서 제외하거나 입력 범위 제한을 통해 간접 관리되는 구조입니다.

조건 분기 및 조합 처리
휴일 여부, 평일 여부, 후보 존재 여부 등 복합 조건을 분기문으로 꼼꼼히 설계해 요구사항에 맞는 동작을 구현합니다.

"""