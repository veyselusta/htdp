;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 27-profit-of-show) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define STANDART-ATTENDEES 120)
(define STANDART-PRICE 5.0)
(define CHANGES-BY-PEOPLE 15)
(define RATES 0.1)
(define COST-BY-PEOPLE 0.4)
(define FIXED-COST 180)

(define (attendees ticket-price)
  (- STANDART-ATTENDEES (* (- ticket-price STANDART-PRICE) (/ CHANGES-BY-PEOPLE RATES))))

(define (revenue ticket-price )
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED-COST (* COST-BY-PEOPLE (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

