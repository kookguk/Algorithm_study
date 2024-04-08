N = 1000 - int(input())

# 거슬러줘야 할 동전 개수
count = 0

# 동전 종류
money = [500, 100, 50, 10, 5, 1]

# 가장 큰 단위 부터, 나눈 몫을 count에 더하기
for coin in money:
    count += N // coin
    # 아직 거슬러주지 못한 돈은 나머지로 계산
    N %= coin

print(count)