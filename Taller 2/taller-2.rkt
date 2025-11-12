;; Taller 2 - Rodrigo Iraheta 00083121
#lang racket

(define (mostrar-resultados lista)
  (if (list? lista)  ; Verificar si la entrada es una lista
      (for-each (lambda (x) (display x) (display " ")) lista)
      (display lista))  ; Si no es lista, solo mostrar el valor
  (newline))

;; Ejercicio 1
(define (contar-positivos lista)
  (length (filter positive? lista)))

; Prueba
(mostrar-resultados (contar-positivos '(3 -2 7 0 -5 9)))  ; Debería retornar 3

; ==========================================
;; Ejercicio 2
(define (cuadrados-pares lista)
  (map (lambda (x) (* x x)) (filter even? lista)))

; Prueba
(mostrar-resultados (cuadrados-pares '(1 2 3 4 5 6 7 8)))  ; Debería retornar 4 16 36 64

; ==========================================
;; Ejercicio 3
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

; Prueba
(mostrar-resultados (list (factorial 5)))  ; Debería retornar 120

; ==========================================
;;Ejercicio 4
(define (elevar-cubo lista)
  (map (lambda (x) (* x x x)) lista))

; Prueba
(mostrar-resultados (elevar-cubo '(2 3 4)))  ; Debería retornar 8 27 64

; ==========================================
;; Ejercicio 5
(define (sumar-impares lista)
  (foldl + 0 (filter odd? lista)))

; Prueba
(mostrar-resultados (list (sumar-impares '(1 2 3 4 5 6 7))))  ; Debería retornar 16

; ==========================================
;; Ejercicios 6
(define (contiene-negativos lista)
  (ormap negative? lista))

; Prueba
(mostrar-resultados (list (contiene-negativos '(5 9 -3 2))))  ; Debería retornar #t

; ==========================================
;; Ejercicio 7
(define (suma-acumulada lista)
  (reverse (foldl (lambda (x acc) (cons (+ x (if (null? acc) 0 (car acc))) acc)) '() lista)))

; Prueba
(mostrar-resultados (suma-acumulada '(1 2 3 4)))  ; Debería retornar 1 3 6 10

; ==========================================
;; Ejercicio 8
(define (concatenar-cadenas lista)
  (foldl (lambda (x acc) (string-append acc x)) "" lista))

; Prueba
(display (concatenar-cadenas '("Hola" " " "Mundo")))  ; Debería retornar "Hola Mundo"
(newline)

; ==========================================
;; Ejercicio 9
(define (doble-mayores-que-5 lista)
  (map (lambda (x) (* 2 x)) (filter (lambda (x) (> x 5)) lista)))

; Prueba
(mostrar-resultados (doble-mayores-que-5 '(3 6 8 2 10)))  ; Debería retornar 12 16 20

; ==========================================
;; Ejercicio 10
(define (invertir lista)
  (foldl (lambda (x acc) (cons x acc)) '() lista))

; Prueba
(mostrar-resultados (invertir '(1 2 3 4)))  ; Debería retornar 4 3 2 1

; ==========================================
;; Ejercicio 11
(define (aplicar-funcion funcion lista)
  (map funcion lista))

; Prueba
(mostrar-resultados (aplicar-funcion (lambda (x) (* x x)) '(1 2 3 4)))  ; Debería retornar 1 4 9 16

; ==========================================
;; Ejercicio 12
(define (promedio-mayores-que-5 lista)
  (let* ((mayores (filter (lambda (x) (> x 5)) lista))
         (suma (foldl + 0 mayores))
         (cantidad (length mayores)))
    (/ (exact->inexact suma) cantidad)))  ; Convertimos suma a flotante

; Prueba
(display (promedio-mayores-que-5 '(3 8 10 4 9 2 7)))  ; Debería retornar 8.5
(newline)
