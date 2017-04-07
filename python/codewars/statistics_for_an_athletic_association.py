def stat(strg):
    results = strg.split(", ")
    print(results)
    seconds = [total(i) for i in results] 
    print(seconds)
    print(r(seconds))
    
def total(strg):
    numbers = strg.split("|")
    h = int(numbers[0]) * 3600
    m = int(numbers[1]) * 60
    s = int(numbers[2])
    total = h + m + s
    return total
    
def r(seconds):
    order = sorted(seconds)
    diff = order[4] - order[0]
    return diff

    # https://www.codewars.com/kata/55b3425df71c1201a800009c/train/python