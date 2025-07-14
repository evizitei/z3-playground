import z3 as z3

Z = z3.IntSort()
f = z3.Function('f', Z, Z)
x, y, z = z3.Ints('x y z')
A = z3.Array('A', Z, Z)
# premise is that y - x == 2, and the value at X is 3, and so accessing that value from Y - 2
# 3 will also be 3, and any f of y - x + 1 will be f of 3, so no matter what funciton f is
# this implication will always hold.
fml = z3.Implies(x + 2 == y, f(z3.Store(A, x, 3)[y - 2]) == f(y - x + 1))
z3.solve(z3.Not(fml)) # expect unsat