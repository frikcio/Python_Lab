"""
    1.Создать класс  Employee. Хранить в нём данные о работнике:
        (
            Имя,
            почту,
            ЗП за один рабочий день
        ).  
    2.Создать метод work(...) который возвращает строку:
        “I come to the office.” 
    3.Создать метод check_salary(...) - который позволит посчитать ЗП за указанное количество рабочих дней. 
    4.Создать классы Recruiter и Programmer, которые наследуются от Employee 
    5.Переопределить методы work() которые будут использовать метод родителя и возвращать: 
        ◦“I come to the office and start to coding.” - для Programmer 
        ◦“I come to the office and start to hiring.” - для Recruiter 
    6.Переопределить методы __str__ для классов-наследников, чтоб они возвращали строку: “Должность: Имя” 
"""

class Employee(object):
    def __init__(self, name, email, salary):
        self.name = name
        self.email = email
        self.salary = salary

    def work(self):
        return "I come to the office."

    def chek_salary(self, days):
        return self.salary * days

class Recruiter(Employee):
    def __str__(self):
        return "Recruiter" + ": " + str(self.name)

    def work(self):
        return "{}\n{} and start hiring.\n".format(self, super().work()[:-1] )

class Programmer(Employee):
    def __str__(self):
        return "Junior Programmer" + ": " + str(self.name)

    def work(self):
        return "{}\n{} and start coding.\n".format(self, super().work()[:-1])

andrii = Programmer("Andrii", "some@email.com", 450)
danilo = Recruiter("Danilo", "danilo@a-level.ua", 1500)

print(andrii.work())

print(danilo.work())
