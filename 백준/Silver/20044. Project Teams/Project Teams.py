# n, data(=2n) 입력받기
n = int(input())
data = list(map(int, input().split()))

# 입력받은 수들 정렬하기
data.sort()

# 두 숫자 씩 묶기
sum = []
for i in range(n*2):
    current_sum = data[i] + data[n*2 - i-1]
    sum.append(current_sum)               

# 최소 합 구하기
min_sum = min(sum)

# 최소 합 출력
print(min_sum)