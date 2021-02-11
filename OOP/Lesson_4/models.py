"""
1.Сделать возможным записывать имейл Employee в файл при создании объекта 
2.Создать внутренний метод валидации в классе Employee, который будет выполнятся при создании нового объекта и
    выбрасывать ошибку ValueError если уже существует объект с таким же email. 

3. Создать в классе Candidate метод work.
4.Создать кастомную ошибку UnableToWorkException, которая будет вызываться в классе Candidate при вызове метода .work()
    с сoобщением “I’m not hired yet, lol.” 

5.Добавить в app.py try/except блок, который будет оборачивать выполнение main.py и записывать в файл logs.py сообщения
    об ошибках(date: time    exception type, traceback). 
"""


class Employee(object):
    def __init__(self, name, email, salary):
        self.name = name
        self.email = email
        self.salary = salary
        self.check_duplicate_emails()

    def work(self):
        return "I come to the office."

    def check_salary(self, month):
        return f"{self.name}'s salary for {month} months will be {self.salary * month}$"

    def save_email(self):
        file = open("emails.txt", "a+")
        file.write(f"{self.__class__.__name__} {self.name}: {self.email}\n")
        file.close()

    def check_duplicate_emails(self):
        file = open("emails.txt", "r+").read()
        if self.email in file:
            raise ValueError(f'email "{self.email}" already in use')
        elif self.email not in file:
            self.save_email()


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

    def work(self):
        raise UnableToWorkException("I’m not hired yet, lol.")


class Vacancy:
    def __init__(self, title, main_skill, main_skill_level):
        self.title = title
        self.main_skill = main_skill
        self.main_skill_level = main_skill_level


class UnableToWorkException(Exception):
    pass