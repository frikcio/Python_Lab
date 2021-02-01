"""Домашка

1. Создать классы Oxygen, Chlorine, Iron. (Один на выбор)

2. В качестве свойств описать температуру замерзания, плавления,
   испарения.

3. Написать метод agg_state(self, t), который принимает температуру в градусах цельсия
   и возвращает строчное представление текущего агрегатного состояния."

4. Добавить параметр шкалы измерения (цельсий, фаренгейт, кельвин).

5. Создать родительский класс Element, в котором будут содержаться
   все методы.

6. Добавить метод для конвертации из одной шкалы в другую."""


class Element(object):
    def celsius(self):
        if self.unit == "F":
            self.t_melting = (self.t_melting - 32) * (5 / 9)
            self.t_evaporation = (self.t_evaporation - 32) * (5 / 9)
            self.unit = "°C"
            print('"F" have been converted to "°C"\n')
        elif self.unit == "°K":
            self.t_melting = self.t_melting - 273.15
            self.t_evaporation = self.t_evaporation - 273.15
            self.unit = "°C"
            print('"°K" have been converted to "°C"\n')
        else:
            print("temperature is in {}\n".format(self.unit))

    def fahrenheit(self):
        if self.unit == "°C":
            self.t_melting = (self.t_melting * (9 / 5)) + 32
            self.t_evaporation = (self.t_evaporation * (9 / 5)) + 32
            self.unit = "F"
            print('"°C" have been converted to "F"\n')
        elif self.unit == "°K":
            self.t_melting = (self.t_melting - 273.5) * (9 / 5) + 32
            self.t_evaporation = (self.t_evaporation - 273.5) * (9 / 5) + 32
            self.unit = "F"
            print('"°K" have been converted to "F"\n')
        else:
            print("temperature is in {}\n".format(self.unit))

    def kelvin(self):
        if self.unit == "°C":
            self.t_melting = self.t_melting + 273.15
            self.t_evaporation = self.t_evaporation + 273.15
            self.unit = "°K"
            print('"°C" have been converted to "°K"\n')
        elif self.unit == "F":
            self.t_melting = (self.t_melting - 32) * (5 / 9) + 273.15
            self.t_evaporation = (self.t_evaporation - 32) * (5 / 9) + 273.15
            self.unit = "°K"
            print('"F" have been converted to "°K"\n')
        else:
            print("temperature is in {}\n".format(self.unit))

    def agg_state(self, temperature):
        if self.unit == "°K":
            temperature = temperature + 273.15
        elif self.unit == "F":
            temperature = temperature * (9 / 5) + 32

        if temperature < self.t_melting:
            print("temperature of {} is {}{} and it is solid".format(self.name, temperature, self.unit))

        elif temperature >= self.t_melting and temperature < self.t_evaporation:
            print("temperature of {} is {}{} and it is liquid".format(self.name, temperature, self.unit))

        elif temperature >= self.t_evaporation:
            print("temperature of {} is {}{} and it is evaporates\n".format(self.name, temperature, self.unit))

        else:
            print("something wrong")


class Iron(Element):
    name = ""
    t_melting = 0
    t_evaporation = 0
    unit = ""


Fe = Iron()
Fe.name = "Ferum"
Fe.t_melting = 1538
Fe.t_evaporation = 2862
Fe.unit = "°C"

Fe.agg_state(1300)
Fe.agg_state(1538)
Fe.agg_state(2862)

Fe.fahrenheit()
Fe.agg_state(1300)
Fe.agg_state(1538)
Fe.agg_state(2862)

Fe.kelvin()
Fe.agg_state(1300)
Fe.agg_state(1538)
Fe.agg_state(2863)

