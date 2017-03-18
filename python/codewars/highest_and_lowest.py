numbers = "4 5 29 54 4 0 -214 542 -64 1 -3 6 -6"


def high_and_low(numbers):
    split_str = numbers.split(" ")
    num_li = map(int, split_str)
    sort = sorted(num_li)
    first, last = [sort[-1], sort[0]]
    result = str(first) + " " + str(last)
    return(result) 

print(high_and_low(numbers))
