# Taller 2 - Programación Declarativa

## Integrante

| Nombre  | Carne |
| ------------- |:-------------:|
| Kelvin Rodrigo Iraheta Morales      | 00083121     |

Este repositorio contiene las soluciones al Taller 2 de Programación Declarativa, donde se abordaron diversos ejercicios prácticos en Racket. El taller se enfocó en aplicar los conceptos de programación funcional, como el uso de funciones puras, recursión, y funciones de orden superior como `map`, `filter`, `foldl`, entre otros.

## Ejercicios realizados

### Ejercicio 1: Contar elementos positivos en una lista
Se utilizó `filter` para extraer los elementos positivos de una lista y `length` para contar cuántos elementos positivos había.

### Ejercicio 2: Generar lista de cuadrados de números pares
Combinamos `map` y `filter` para generar una lista de los cuadrados de los números que son pares.

### Ejercicio 3: Calcular el factorial de un número
Implementamos el cálculo del factorial de un número utilizando recursión.

### Ejercicio 4: Elevar cada número al cubo
Se usó `map` con una función lambda para elevar cada número de la lista al cubo.

### Ejercicio 5: Sumar todos los elementos impares
Usamos `filter` para extraer los números impares y `foldl` para sumarlos.

### Ejercicio 6: Determinar si una lista contiene números negativos
Aplicamos la función `ormap` junto con `negative?` para verificar si la lista contiene al menos un número negativo.

### Ejercicio 7: Calcular la suma acumulada de una lista
Se utilizó `foldl` para construir una lista con la suma acumulada de los números de la lista original.

### Ejercicio 8: Concatenar cadenas de texto en una lista
Utilizamos `foldl` para concatenar las cadenas de texto dentro de una lista.

### Ejercicio 9: Generar lista con el doble de los números mayores que 5
Se combinó `filter` para seleccionar los números mayores que 5, y luego se usó `map` para generar una lista con el doble de esos números.

### Ejercicio 10: Invertir el orden de una lista
Se utilizó `foldl` para invertir el orden de los elementos de la lista.

### Ejercicio 11: Crear una función que reciba una función como parámetro
Se creó una función que recibe otra función como argumento y la aplica a una lista utilizando `map`.

### Ejercicio 12: Promedio de los números mayores a 5
Se utilizó `filter` para seleccionar los números mayores que 5, luego se calculó su suma con `foldl` y se dividió por la cantidad de elementos seleccionados para obtener el promedio.

## Instalación y Ejecución

Este proyecto fue desarrollado en Racket, un lenguaje funcional basado en Lisp. Para ejecutar los ejercicios, puedes seguir estos pasos:

1. **Instalar Racket**: Si no tienes Racket instalado, puedes descargarlo desde su [sitio oficial](https://racket-lang.org/download/).
2. **Abrir en un editor de código**: Puedes abrir los archivos `.rkt` en cualquier editor de texto, como Visual Studio Code, con soporte para Racket.
3. **Ejecutar en la terminal**: Desde la terminal, navega al directorio del proyecto y ejecuta el archivo con el siguiente comando:
   ```bash
   racket taller-2.rkt

