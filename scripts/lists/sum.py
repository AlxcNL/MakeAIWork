#!/usr/bin/env python
# Author: Jacques de Hooge

# Create [2, 4, 6, ..., 20]
even_numbers = [2 * (index + 1) for index in range (10)] 
print ('Even numbers:', even_numbers)

total = sum (even_numbers)
print ('Total:', total)