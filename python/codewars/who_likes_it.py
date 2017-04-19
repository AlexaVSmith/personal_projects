names = ["Jon", "Alexa", "Phil"]


def likes(names):
    if names == []:
        print("no one likes this")
    elif len(names) == 1:
        print(names[0] + " likes this")
    elif len(names) == 2:
        print(names[0] + " and " + names[1] + " likes this")
    else:
        for i in names:
            print(", ".join(names))
        return

likes(names)
