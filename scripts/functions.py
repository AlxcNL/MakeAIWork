#!/usr/bin/env python

def rekenen(param):
    print(param, " plus 7 is ", param+7)

def uitrekenen(param1, param2):
    print(param1, " plus ", param2, " = ", param1+param2)
    return param1+param2

rekenen(8)
resultaat= uitrekenen(15,12)
print(resultaat)    