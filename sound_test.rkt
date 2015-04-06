#lang racket
(require portaudio
         ffi/vector)
(pa-maybe-initialize)

(define (createVec low high)
  (define pitch (+ (random (- high low)) low))
  
  (define sample-rate 44100.0)
  (define tpisr (* 2 pi (/ 1.0 sample-rate)))
  (define (real->s16 x)
    (inexact->exact (round (* 32767 x))))
  
  (define vec (make-s16vector (* 88200 2)))
  (for ([t (in-range 88200)])
    (define sample (real->s16 (* 0.2 (sin (* tpisr t pitch)))))
    (s16vector-set! vec (* 2 t) sample)
    (s16vector-set! vec (add1 (* 2 t)) sample))
  
  vec)

(define (makelist li n)
  (if (= n 0)
      (cons (createVec 300 800) '())
      (cons (createVec 300 800) (makelist li (- n 1)))))
(define a (makelist '() 9))

(map (lambda (vec) (s16vec-play vec 0 88200 44100.0)) a)