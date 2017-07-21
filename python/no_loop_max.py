def no_loop_max(arr):
    if len(arr) == 1:
        return arr[0]
    if arr[0] > no_loop_max(arr[1:]):
        return arr[0]
    else:
        return no_loop_max(arr[1:])

if __name__ == '__main__':
    test = [1, 2, 3, 4, 5]
    max = no_loop_max(test)
    print (max)

