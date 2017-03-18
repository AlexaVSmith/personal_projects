def is_triangle(a, b, c):
    if (a >= b + c) or (b >= a + c) or (c >= a + b):
        return False
    else:
        return True
