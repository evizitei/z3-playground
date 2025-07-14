from z3 import *

# Simple example to verify z3 is working
x = Int('x')
y = Int('y')
solve(x > 2, y < 10, x + 2*y == 7)

print("Z3 is successfully installed and working!")