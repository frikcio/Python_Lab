f = open('numbers.txt')
b = open("fizz-buzz.txt", "w")
for i in range(20):
    m = (f.readline().split())
    b.write(str(m) + "\n ")
    fizz, buzz, thrd = int(m[0]), int(m[1]), int(m[2])
    for i in range(1, thrd + 1):
        if i % fizz == 0 and i % buzz == 0:
            b.write("FB ")
        elif i % buzz == 0:
            b.write("B ")
        elif i % fizz == 0:
            b.write("F ")
        else:
            b.write(str(i)+" ")
    b.write("\n")
f.close()
b.close()