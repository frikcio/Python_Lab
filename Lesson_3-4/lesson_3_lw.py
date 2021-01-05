import sys
n=""
b = (10, 20, 50, 100, 200, 500, 1000)
while n !="6":
    n = input("\n1 - sum(while and for)\n"
              "2 - read this file\n"
              "3 - reverse this file\n"
              "4 - ATM max\n"
              "5 - ATM min\n"
              "6 - exit\n")

    if n == "1":
        print("1 - sum(while and for)\n")
        # first mission
        a = [10, 20, 30, 40]
        i, sum = 0, 0
        while i != len(a):
            sum += a[i]
            i += 1
        print(sum)

        for i in a:
            sum += i
        print(sum)

    elif n == "2":
        print("2 - read this file\n")
        # second mission
        file = open("lesson_3_lw.py", "r")
        f = file.read()
        file.close()
        print(f)

    elif n == "3":
        print("3 - reverse this file\n")
        # third mission
        m = []
        f = open('lesson_3_lw.py')
        while m.count('') != 1:
            m.append(f.readline().rstrip())
        for i in m[::-1]:
            print(i)
        f.close()

    elif n == "4":
        print("4 - ATM max\n")
        #fourth mission
        n = int(input())
        i, j = len(b) - 1, 0
        while True:
            if n < b[i]:
                if j > 0:
                    print(str(j) + " * " + str(b[i]), end="\n")
                    if n == 0:
                        break
                i -= 1
                j = 0
            elif n >= b[i]:
                n -= b[i]
                j += 1

    elif n == "5":
        print("5 - ATM min\n")
        #fifth
        k = 10
        b = (k, k * 2, k * 5, k * 10, k * 20, k * 50, k * 100)
        a = [0, 0, 0, 0, 0, 0, 0]
        n = int(input())
        sum, i = 0, 0
        while sum != n:
            if a[i] != 10 and sum <= n:
                sum += b[i]
                a[i] += 1
            elif a[i] == 10 and sum <= n:
                i += 1
            elif sum > n:
                if sum - n >= b[i]:
                    if sum - n == b[i] and a[i] >= 1:
                        sum -= b[i]
                        a[i] -= 1
                    elif sum - n >= b[i] and a[i + 1] >= 1:
                        i += 1
                        sum -= b[i]
                        a[i] -= 1
                elif sum - n <= b[i]:
                    i = 0
        sum = 0
        for i in range(0, 6):
            if a[i] != 0:
                print(str(a[i]) + " * " + str(b[i]), end="\n")
            sum += a[i] * b[i]
        print(sum)
