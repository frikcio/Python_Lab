def t_lower(string):
    return string.lower()

def t_upper(string):
    return string.upper()

def sqr(num):
    k = 0
    for i in range(1, num+1):
        if num % i == 0:
            k += 1
    if k == 2:
        return num * num

def word_count(word):
    x = []
    x.append(file.count(word))
    print(word, x)

List = []
# first task
"""
for i in range(5):
    List.append(input())
print(list(map(t_lower, List)))
print(list(map(t_upper, List)))
"""
# second task
"""
file = open("numbers.txt")
List.append(file.read().rstrip().split())
List = list(map(int, List[0]))
print(List)
for i in list(map(sqr, List)):
    if i is not None:
        print(i, end=" ")
"""

# third task
"""
file = open("English.txt").read()
word_list = list(set(file.split()))
list(map(word_count, word_list))
"""


