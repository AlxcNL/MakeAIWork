class Vector:
    """
    This is a class to generate vectors
    """
    def __init__(self, scalarList):
        self.scalarList = scalarList
    
    def addVector(self, otherVector):
        pass
    
    def multiplyVector(self, otherVector):
        pass
    
    def printVector(self):
        print(f"Dit is de vector: {self.scalarList}")
    
list = [9, 8]    
v = Vector(list)
v.printVector()    