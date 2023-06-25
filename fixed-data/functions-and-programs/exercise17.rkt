;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise17) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define (image-classify image)
  (cond
    [(is-taller image)"tall"]
    [(is-wider image) "wide"]
    [else "square"]))

(define (is-taller image)
  (> (image-height image) (image-width image)))

(define (is-wider image)
  (> (image-width image) (image-height image)))