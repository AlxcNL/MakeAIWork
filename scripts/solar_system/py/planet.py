from dataclasses import dataclasses

@dataclasses
class Planet:
    name: str
    type: str
    mass: float
    lengthOfDay: int
    lengthOfYear: int
    averageDistanceToStar: int
    
    