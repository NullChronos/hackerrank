if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())

    sorted_arr = sorted(arr)
    largest_num = sorted_arr[-1]

    for x in reversed(sorted_arr):
        if x < largest_num:
            largest_num = x
            break

    print(largest_num)
