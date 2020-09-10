;the good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers. Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. Explain these statements, with examples showing how the test fails for small and large numbers. An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?


;Initial code
;==================
(define (sqrt-iter guess x)
   (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))


(define (improve guess x)
   (average guess (/ x guess)))


(define (average x y)
   (/ (+ x y) 2))


(define (good-enough? guess x)
   (< (abs (- (square guess) x)) 0.001))


(define (sqrt x)
   (sqrt-iter 1.0 x))



;This code will work well for medium range numbers but not for very small or very large ones.

;In case of very small numbers (even for numbers in the range of ~10^-3), the error is already too small to be detected 'goodenough?'.Therefore we see a large error in the output.

(sqrt 0.001) -> 0.04124542607499115
Actual Value -> 0.0316227766016837


; In case of very large numbers, the execution never terminates due to the limited precision capacity of real machines.

;Therefore, we modify the code as suggested in the problem statement.

;Modified procedure
;====================

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) (* guess 0.0001)))

;using this procedure, the above example can be better evaluated as

(sqrt 0.001) -> .03162278245070105

;even for large numbers, some cases which resulted in an endless execution using old procedure, produced a result. However there is no way to compare if the approximation to the result was better or not.






