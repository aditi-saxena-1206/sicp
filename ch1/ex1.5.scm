
(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))

;evaluating => (test 0 (p))

;applicative order evaluation
;============================

; here, the names are first substituted with their corresponding value. Since 'p' is defined as itself recursively, when test begins to substitute'(p)', it ends up in an infinite loop.

;normal order evaluation
;===========================

;here, we first expand the given expression adn then begin evaluation. Therefore, in test, the value of '(p)' isn't evaluated and the result is directly given as 0.




