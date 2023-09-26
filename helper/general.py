# from datetime import date
from datetime import datetime

def randomName():
    # datetime object containing current date and time
    now = datetime.now()
    
    print("now =", now)

    # dd/mm/YY H:M:S
    dt_string = now.strftime("%d%m%Y%H%M%S")

    print(dt_string)

    mapping = {'0': 'A','1': 'B','2': 'C','3': 'D','4': 'E','5': 'F','6': 'G','7': 'H','8': 'I','9': 'J'}
    for key, value in mapping.items():
        dt_string = dt_string.replace(key, value)

    print(dt_string)
    return  dt_string

