import math

def next_perfect_square(i):
    def is_integer(f):
        return f - round(f) == 0.0

    while True:
        if i % 2 == 0 and is_integer(math.sqrt(i)):
            yield i
        i += 1
        if i == 1000: break

if __name__ == '__main__':
    
    print(list(next_perfect_square(0)))
    print(next_perfect_square(0))
    print(next_perfect_square(0))
    for perfect_square in next_perfect_square(0):
        print(perfect_square)
        if perfect_square > 100:
            exit(0)
