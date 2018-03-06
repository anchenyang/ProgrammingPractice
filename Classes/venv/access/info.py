class Shape():
    """A class to describe a shape"""

    def __init__(self, color):
        self.color = color
        print(__name__)


    def printcolor(self):
        print(self.color)


class Circle(Shape):

    def __init__(self, color,radius):
        super().__init__(color)
        self.radius = radius

    def printradius(self):
        print(self.radius)
        return self.radius

def catch(example):
    print(example.color)

def printtext():
    print("al")
    print(__name__)