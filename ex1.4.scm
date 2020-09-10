(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

;the given procedure returns the sum of the value in argument a and the absolute value of argument b.Within the if statement of the procedure, we notice a rather odd set of consequent and alternative which are given as operators. But this condition works perfectly as in any other case. It will test the condition and accordingly, take the value of that operator. This is derived from the fact in Lisp, even operators are basically like names to some procedure. So, they also hold a value in the environment. Just like a holds any numerical value, + hold a addition procedure as its value.
