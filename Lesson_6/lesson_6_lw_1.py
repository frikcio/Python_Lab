student_list = {"Petrov Andreii": {"1-st module": 80, "2-nd module": 85, "3-thd module": 70},
                "Petrov Petro": {"1-st module": 70, "2-nd module": 80, "3-thd module": 80},
                "Ivanov Ivan": {"1-st module": 65, "2-nd module'": 75, "3-thd module": 70},
                "Tarasov Taras": {"1-st module": 90, "2-nd module": 85, "3-thd module": 85},
                "Ser'yeznyy Semen": {"1-st module": 85, "2-nd module": 85, "3-thd module": 85}}
averages_grade = {}
def count_ave(student):
    summ = 0
    for module in student_list[student]:
        summ += (student_list[student][module])
    averages_grade.update({summ/len(student_list[student]) : student})

list(map(count_ave, student_list))
print(averages_grade[max(averages_grade)],"has maximum averages grade: ", max(averages_grade))
print(averages_grade[min(averages_grade)],"has minimum averages grade: ", min(averages_grade))