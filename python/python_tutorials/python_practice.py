# if Statements
x = int(input("Please enter an integer: "))

if x < 0:
    print('Negative changed to zero')
elif x == 0:
    print('Zero')
elif x == 1:
    print('Single')
else:
    print('More')

# for statements
words = ['cat', 'window', 'defenestrate']

for w in words:
    print(w, len(w))

# Loop over a slice copy of the entire list
for w in words[:]:
    if len(w) > 6:
        words.insert(0, w)

# The range() Function
for i in range(5):
    print(i)

# start at index 5(6) stop at 10
for i in range(5, 10):
    print(i)

# start, stop, step(in 3's)
for i in range(0, 10, 3):
    print(i)

for i in range(-10, -100, -30):
    print(i)

a = ['Mary', 'had', 'a', 'little', 'lamb']
for i in range(len(a)):
    print(i, a[i])

print(range(10))

k = list(range(5))

print k

# break statement and else clause on loop
# break statement, breaks out of the smallest enclosing for or while loop
for n in range(2, 10):
    for x in range(2, n):
        if n % x == 0:
            print(n, 'equals', x, '*', n//x)
            break
        else:
            print(n, 'is a prime number')

# continue statement and else clause on loop
# continue statement continues with the next iteration of loop
for num in range(2, 10):
    if num % 2 == 0:
        print("Found an even number", num)
        continue
    print("Found a number", num)

# pass Statements
# does nothing, no action
# while True:
#     pass

# classes
class MyEmptySpace:
    pass

def initlog(*args):
    pass

# Functions and Fibonacci
def fib(n):
    a, b = 0, 1
    while a < n:
        print a
        a, b = b, a + b

fib(2000)

# tables
table = {'John': 234, 'Alexa': 344, 'Stef': 567}

for name, phone in table.items():
    print '{0:10} ==> {1:10d}'.format(name, phone)

# variables
my_name = 'Alexa'
my_age = 34
location = 'London'

print("My name is %s" % my_name + " and I'm %d" % my_age + " and I live in %s" % location)

# Arguments