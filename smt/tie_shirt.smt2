; https://theory.stanford.edu/~nikolaj/programmingz3.html exercise in 2
(declare-const tie Bool)
(declare-const shirt Bool)
(assert (or tie shirt))
(assert (or (not tie) shirt))
(assert (or (not tie) (not shirt)))
(check-sat)
(get-model)