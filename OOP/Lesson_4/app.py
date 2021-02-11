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

from models import *
from datetime import *
import traceback


def main():
    danilo = Recruiter("Danilo", "danil@a-level.ua", 2000)
    steve = Programmer("Steve", "anygelator@google.com", 2500)
    marry = Programmer("Maria", "pussy@mail.ru", 2300)

    andrii = Candidate("Hryshchenko Andrii", "ckarry@yandex.ua", "some technologies", "Python", "Junior")
    dan = Candidate("Dan Brown", "bigd1k@google.com", "not have", "Python", "Trainee")
    carin = Candidate("Slutko Carina", "sneeker@spaces.ru", "Borsh", "Python", "Junior+")
    andrii.work()
    dan.work()
    carin.work()

    atm = Vacancy("Python BackEnd programmer", "Python", "Strong Junior 2+")
    nix = Vacancy("Python QA tester", "Python", "Strong Junior 2+")

try:
    main()
except UnableToWorkException:
    file = open("logs.txt", "a+")
    file.write(f'{date.today()}: {datetime.now().strftime("%H:%M:%S")} UnableToWorkException, {traceback.format_exc()}\n\n')
except ValueError:
    file = open("logs.txt", "a+")
    file.write(f'{date.today()}: {datetime.now().strftime("%H:%M:%S")} ValueError, {traceback.format_exc()}\n\n')
finally:
    file.close()
