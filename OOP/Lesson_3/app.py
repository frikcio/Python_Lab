"""
1.Вынести класс Employee и классы Recruiter и Programmer в отдельный файл. 
2.Разместить эти файлы в модуле models.py 
3.Создать файл app.py, в котором будет выполняться контекст программы. 
4.Добавить класс Candidate с полями full_name, email, technologies, main_skill, main_skill_grade. 
5.Добавить класс Vacancy c полями title, main_skill, main_skill_level. 
6.В функции main в файле app создать 1 рекрутера, 2 программистов, 3 кандидатов и 2 вакансии. 
7.Отформатировать код согласно pep8 
8.Создать git репозиторий, добавить в него файл .gitignore, добавить исключения. 
9.Сделать push в удаленный репозиторий. 
"""

from models import *


def main():
    danilo = Recruiter("Danilo", "danil@a-level.ua", 2000)
    steve = Programmer("Steve", "anygelator@google.com", 2500)
    marry = Programmer("Maria", "pussy@mail.ru", 2300)

    andrii = Candidate("Hryshchenko Andrii", "ckarry@yandex.ua", "some technologies", "Python", "Junior")
    dan = Candidate("Dan Brown", "bigd1k@google.com", "not have", "Python", "Trainee")
    carin = Candidate("Slutko Carina", "sneeker@spaces.ru", "Borsh", "Python", "Junior+")

    atm = Vacancy("Python BackEnd programmer", "Python", "Strong Junior 2+")
    nix = Vacancy("Python QA tester", "Python", "Strong Junior 2+")


main()
