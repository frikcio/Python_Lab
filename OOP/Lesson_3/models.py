"""
    1.Создать класс  Employee. Хранить в нём данные о работнике:
        (Имя, почту, ЗП за один рабочий день).  
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

    def check_salary(self, month):
        return f"{self.name}'s salary for {month} months will be {self.salary * month}$"


class Recruiter(Employee):
    def __str__(self):
        return "Recruiter" + ": " + str(self.name)

    def work(self):
        return "{}\n{} and start hiring.\n".format(self, super().work()[:-1])


class Programmer(Employee):
    def __str__(self):
        return "Junior Programmer" + ": " + str(self.name)

    def work(self):
        return "{}\n{} and start coding.\n".format(self, super().work()[:-1])


class Candidate:
    def __init__(self, full_name, email, technologies, main_skill, main_skill_grade):
        self.full_name = full_name
        self.email = email
        self.technologies = technologies
        self.main_skill = main_skill
        self.main_skill_grade = main_skill_grade


class Vacancy:
    def __init__(self, title, main_skill, main_skill_level):
        self.title = title
        self.main_skill = main_skill
        self.main_skill_level = main_skill_level
