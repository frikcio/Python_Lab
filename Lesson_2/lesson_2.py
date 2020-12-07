in_1 = ""
while True:

    # Второй уровень ("if-elif-else"):
    # Придумать свои собственные примеры на альтернативные варианты if
    # и активное использование булевой алгебры.
    in_1 = input('\nEnter number if you want:\n'
                 '1 - open "fizz - buzz"\n'
                 '2 - close program\n')
    if in_1 == "2":
        in_2 = input("Are you sure?\n 1 - yes\n 2 - no\n")
        if in_2 == "1":
            print("Bye!")
            break
        elif in_2 == "2":
            print("Ok, lets continue!\n")
            continue
        else:
            print("WRONG INPUT!")
            continue

    # Третий уровень ("Мистер Буль. Джордж Буль!"):
    if in_1 == "1":
        fizz, buzz, thrd = int(input("first number:\n")), int(input("second number:\n")), int(input("third number:\n"))
        for i in range(1, thrd + 1):
            if i % fizz == 0 and i % buzz == 0:
                print("FB", end=" ")
            elif i % buzz == 0:
                print("B", end=" ")
            elif i % fizz == 0:
                print("F", end=" ")
            else:
                print(i, end=" ")
        print("\nThat's all")
    else:
        print("WRONG INPUT!")
        continue