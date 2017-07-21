def calc_min_post(postArray, t):
    Lu = []
    L = [0]
    for elem in postArray:
        TL = [s + elem for s in L]
        TL = sorted(list(set(TL)))
        print ('first remove copy')
        print (TL)
        print ('\n')
        for e in TL:
            if not e > t:
                Lu.append(e)
        L = sorted(list(set(L)))
        L = merge_list(L, Lu)

    return L[-1]


def merge_list(La, Lb):
    ML = []
    i = 0
    j = 0
    while True:
        if j < len(Lb) and i < len(La):
            if La[i] > Lb[j]:
                if not Lb[j] in ML:
                    ML.append(Lb[j])
                j = j + 1
            elif Lb[j] > La[i]:
                if not La[i] in ML:
                    ML.append(La[i])
                i = i + 1
            else:
                if not La[i] in ML:
                    ML.append(La[i])
                i = i + 1
                j = j + 1
        elif i >= len(La) or j >= len(Lb):
            break
    if i < len(La):
        for l in La[i:]:
            if l not in ML:
                ML.append(l)
    if j < len(Lb):
        for l in Lb[j:]:
            if l not in ML:
                ML.append(l)
    print ('second remove copy')
    print (ML)
    print ('\n')
    return ML
if __name__ == '__main__':
    testArray = [1, 2, 3, 4, 5, 7, 14]
    s = 0
    for ai in testArray:
        s = s + ai
    t = s/2
    print (t)
    min = calc_min_post(testArray, t)
    print (min)
