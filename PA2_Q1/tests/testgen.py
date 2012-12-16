#!/usr/bin/python

import sys
from random import randint

def dist(a, b):
    return abs(a[0] - b[0]) + abs(a[1] - b[1])

n = int(sys.argv[1])
max_value = int(sys.argv[2])
used = set()

for i in xrange(0, n):
    (x, y) = (randint(0, max_value), randint(0, max_value))
    while (x, y) in used:
        (x, y) = (randint(0, max_value), randint(0, max_value))
    used.add((x, y))

points = list(used)
print n

for i in xrange(0, n):
    for j in xrange(i + 1, n):
        print (i + 1), (j + 1), dist(points[i], points[j])
