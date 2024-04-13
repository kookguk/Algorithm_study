# 순열 라이브러리 import
from itertools import permutations

# 입력 받기
n = int(input())
k = int(input())
card_numbers = []
for i in range(n):
    card_numbers.append(int(input()))

# 가능한 모든 순열 생성
perms = permutations(card_numbers, k)

# 조합된 숫자들 중 중복 없이 카운트
unique_numbers = set()
for perm in perms:
    num_str = ''.join(map(str, perm))
    unique_numbers.add(num_str)

# 결과 출력
print(len(unique_numbers))