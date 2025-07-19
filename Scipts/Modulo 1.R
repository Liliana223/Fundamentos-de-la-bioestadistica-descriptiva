# Fundamentos de la bioestadistica descriptiva
# Prof. Astrid Liliana Vargas Sanchez
# Modulo 1
# Introducción a R para bioestadistica

# -------------------------------
# Asignación de variables
# -------------------------------
valor_a <- 101 # Se sugiere no utilizar caracteres especiales, espacios, ni iniciar con numeros

# Evitar usar nombres de funciones o palabras reservadas. No uses nombres como mean, sum, data, etc., 
# para evitar sobrescribir funciones de R
# Puedes usar guion bajo en vez de espacio. Ejemplo: nombre_estudiante
# Puedes usar una combinación de mayusculas con minusculas. Ejemplo: nombreEstudiante
# Evita usar letras como c para variables, porque: c() es una función base de R que se usa para crear vectores:

valor_b = 3.3
print(valor_b) # Imprimir por pantalla el valor de la variable

25.8 -> valor_B # Es importante diferenciar entre mayusculas o minusculas
print(valor_B)   

# Usa letras minúsculas por consistencia. No es obligatorio, pero facilita la lectura si mantienes un estilo 
# coherente:

total_ventas <- 50000   # mejor que TotalVentas o TOTALVENTAS
      
valor_c<-12L # Numeros enteros. Se puede crear variables sin dejar espacios sin embargo se recomienda dejar espacios
print(valor_c)  # por legibilidad y estilo profesional

      
texto <- "Hola mundo" # Se sugiere usar nombres que indiquen claramente el contenido de la variable
print(texto)

logico <- TRUE
print(logico)

# -------------------------------
# Verificar el tipo de variable
# -------------------------------
print(class(valor_a))       # "numeric"
print(class(valor_b))       # "numeric"
print(class(valor_c))       # "integer"
print(class(texto))   # "character"
print(class(logico))  # "logical"

# -------------------------------
# Operadores aritméticos
# -------------------------------
suma <- valor_a + valor_b
resta <- valor_a - valor_c
producto <- valor_b * valor_b
division <- valor_b / valor_b
potencia <- valor_a^valor_b
modulo <- valor_b %% valor_c     # Residuo

# Mostrar resultados
print(paste("Suma:", suma)) # paste: unir (concatenar) varios elementos en una sola cadena de texto.
print(paste("Producto:", producto))

# -------------------------------
# Operadores comparativos
# -------------------------------
print(valor_a > valor_b)     # TRUE
print(valor_a == valor_b)    # FALSE

# -------------------------------
# Operadores lógicos
# -------------------------------
valor_x <- TRUE

valor_y <- FALSE

print(valor_x & valor_y)     # FALSE 
print(valor_x | valor_y)     # TRUE 

# ----------------------------
# Estructuras de Datos en R
# ----------------------------

# 1. VECTORES (con c())
vector_numerico <- c(3, 2, 3, 4, 8)

print("Vector numérico:")
print(vector_numerico)

vector_caracter <- c("rojo", "azul", "verde")

print("Vector de caracteres:")
print(vector_caracter)

vector_logico <- c(TRUE, FALSE, TRUE)

print("Vector lógico:")
print(vector_logico)

# 1.1 Índices con corchetes. 1 DIMENSIÓN. 1 ÍNDICE 

vector_numerico[1]    # Resultado: 3
vector_caracter[3]    # Resultado: verde
vector_logico[1:3]    # Resultado: TRUE FALSE  TRUE (del primero al tercero)
vector_numerico[c(1, 5)]  # Resultado: 3 8 (elementos 1 y 5)


# 1.2. FACTORES (datos categóricos)

colores <- c("rojo", "azul", "verde", "rojo", "azul") # Crear un vector normal
colores <- factor(c("rojo", "azul", "verde", "rojo", "azul")) # Crear categorias
print("Factor:")
print(colores)
print("Niveles del factor:")
print(levels(colores))

# 2. MATRICES (con matrix())
matriz <- matrix(1:9, nrow = 3, ncol = 3)
print("Matriz 3x3:")
print(matriz)

# 2.1 Índices: [fila, columna] 2 DIMENSIONES. 2 ÍNDICES

matriz[1, 1]  # Resultado:1 (fila 1, columna 1)
matriz[2, 3]  # Resultado:8 (fila 2, columna 3)
matriz[ ,2]   # Resultado: toda la columna 2 → 4 5 6
matriz[3, ]   # Resultado: toda la fila 3 → 3 6 9

# 3. DATA FRAMES (tablas de datos)
df <- data.frame(
  nombre = c("Carlos", "Luisa", "Pedro"),
  edad = c(25, 30, 22),
  aprobado = c(TRUE, TRUE, FALSE)
)
print("Data frame:")
print(df)

# 3.1 Índices: [fila, columna]

df[1, 2]  # Resultado: 25 (fila 1, columna 2: edad)
df[2, ]   # Resultado: segunda fila completa
df[ ,3]   # Resultado: tercera columna

# 3.2 Por nombre de columna

df$nombre        # Accede a la columna "nombre"
df$edad[1]       # Edad de la primera fila → 25
df[["aprobado"]] # Accede a la columna "aprobado"

# 3.3 Con subset() para condiciones:

subset(df, edad > 25)   # Filas con edad mayor a 25
df[df$aprobado == TRUE, ]  # Filas con aprobado TRUE

# 4. ARRAYS (estructuras multidimensionales)
array_3d <- array(1:24, dim = c(2, 3, 4)) # 2 filas, 3 columnas, 4 "capas", "matrices" o "dimensiones"
print("Array 3D:")
print(array_3d)

# 4.1 Índices: [fila, columna, capa o dimensión]. 3 DIMENSIONES. 3 ÍNDICES
                                                                   
array_3d[1, 1, 1]  # Resultado: 1
array_3d[2, 3, 2]  # Resultado: 12

# 5. LISTAS (pueden contener diferentes tipos de datos)
lista <- list(nombre = "Ana", edad = 28, casada = FALSE, notas = c(4.5, 3.8,5.0))
print("Lista:")
print(lista)

# Crear una lista con varios tipos de datos

# a. Crear cada estructura individual
variable <- 42

vector <- c("A", "B", "C", "D")

matriz <- matrix(1:6, nrow = 2, ncol = 3)

df <- data.frame(
  nombre = c("Ana", "Luis"),
  edad = c(23, 30)
)

# b. Crear la lista con todos los elementos
mi_lista <- list(
  numero = variable,
  letras = vector,
  numeros_matriz = matriz,
  personas = df
)

# Ver la lista completa
print("Contenido de la lista:")
print(mi_lista)

# -------------------------------
# Funciones básicas
# -------------------------------
vector1 <- c(12, 5, 3, 10)
print(vector1)

print(length(vector1))          # Número de elementos
print(sum(vector1))             # Suma de elementos
print(sort(vector1))            # Ordena los elementos

# -------------------------------
# Conjuntos de datos
# -------------------------------
                                                                  
# Usamos el dataset iris que ya se encuentra en R
data(iris) 

# Podemos usar otro dataset que hayamos descargado
setwd("C:\\Users\\USER\\Descargas\\Documentos\\Pinguinos")
pinguinos <- read.csv("palmerpenguins_extended.csv")

# Leer un dataset con la libreria readr

# Primero, asegúrate de tener el paquete instalado
# install.packages("readr")

# Cargar la libreria

library(readr)

# Usa read_csv para leer un archivo CSV
archivotxt <- read_table("C:/Users/USER/Descargas/Documentos/Pinguinos/datos_pacientes.txt")

# Verifica los primeros registros
head(archivotxt)

                                                                   