;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 35last-string) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; 1.
; Input is some non-empty string and output is the last charecter of that string

; 2.
; Signature
; String -> String

; 3
; Extract the last charecter from non-empty string

; 4
; (def (last-char str) (substring str ...))

; 5 code
(define (last-char str)
  (substring str (- (string-length str) 1)))

; 6 test
(last-char "hello")