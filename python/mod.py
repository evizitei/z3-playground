import z3 as z3

x, y = z3.Ints('x y')
s = z3.Solver()
s.add(
    (x % 4) + 3 * (y / 2) > (x - y)
)
print(s.sexpr())
print(s.check())
print(s.model())