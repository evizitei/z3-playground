(set-logic QF_AUFLIA)

; Declare variables
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)

; Declare function f: Int -> Int
(declare-fun f (Int) Int)

; Declare array A: Int -> Int
(declare-fun A () (Array Int Int))

; Define the formula: (x + 2 == y) -> (f(store(A, x, 3)[y - 2]) == f(y - x + 1))
(define-fun fml () Bool
  (or 
    (not (= (+ x 2) y))
    (= (f (select (store A x 3) (- y 2)))
       (f (+ (- y x) 1)))
  ))

; Check if the negation of the formula is satisfiable
(assert (not fml))
(check-sat)
(get-model)
