if __name__ == '__main__':
    N = int(input())
    l = list()

    for i in range(0, N):
        r = input().split()

        if r[0] == "print": print(l)
        elif r[0] == "insert": l.insert(int(r[1]), int(r[2]))
        elif r[0] == "remove": l.remove(int(r[1]))
        elif r[0] == "append": l.append(int(r[1]))
        elif r[0] == "sort": l.sort()
        elif r[0] == "pop": l.pop()
        elif r[0] == "reverse": l.reverse()
