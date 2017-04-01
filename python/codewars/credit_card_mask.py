def maskify(cc):
    character_num = len(cc) - 4
    if character_num < 5:
        return(cc)
    last_four = cc[-4:]
    mask = character_num * "#"  
    output = mask + last_four
    return output