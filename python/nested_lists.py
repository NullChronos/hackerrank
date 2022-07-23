if __name__ == '__main__':
    n = int(input())
    marksheet = [[input(), float(input())] for _ in range(n)]
    second_highest = sorted(set([el[1] for el in marksheet]))[1]
    print('\n'.join([name for name, score in sorted(marksheet) if score == second_highest]))
