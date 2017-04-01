def sort_twisted37(arr):
    # your code here
    new_arr = replace(arr)
    sorted_array = new_arr.sort()
    return replace(sorted_array)
    
def replace(arr):    
    for x in arr:
        x = str(x)
        x.replace("3", "!")
        x.replace("7", "3")
        x.replace("!", "7")
        x = int(x)
    print(arr)
    return(arr)   