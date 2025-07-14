import z3 as z3

Z = z3.IntSort()
f = z3.Function('f', Z, Z)
x, y, z = z3.Ints('x y z')
A = z3.Array('A', Z, Z)
fml = z3.Implies(x + 2 == y, f(z3.Store(A, x, 3)[y - 2]) == f(y - x + 1))
z3.solve(z3.Not(fml))