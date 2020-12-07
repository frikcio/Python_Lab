student_list = {"Petrov Andreii": ["Python", "FrontEnd"],
                "Petrov Petro": ["Python"],
                "Ivanov Ivan": ["Java"],
                "Tarasov Taras": ["Python", "FullStack", "FrontEnd"],
                "Ser'yeznyy Semen": ["FrontEnd", "FullStack"]}

def not_in_course(student, course):
    if course not in student_list[student]:
        return course, student

def lot_of_course (student):
    if len(student_list[student]) >= 2:
        return student, len(student_list[student])

def course_or_course (student, course1, course2):
    if course1 and course2 in student_list[student]:
        return course1, course2, student
    elif course1 in student_list[student]:
        return course1, student
    elif course2 in student_list[student]:
        return  course2, student

print(list(map(lot_of_course, student_list)))

for name in student_list:
    print(not_in_course(name, "FrontEnd"))

for name in student_list:
    print((course_or_course(name, "Python", "Java")))