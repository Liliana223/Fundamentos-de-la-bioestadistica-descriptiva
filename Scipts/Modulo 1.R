# Fundamentos de la bioestadistica descriptiva
# Prof. Astrid Liliana Vargas Sanchez
# Modulo 1
# Introducción a R para bioestadistica

# -------------------------------
# Asignación de variables
# -------------------------------
a <- 10
b = 5.2
c <- 12L
texto <- "Hola mundo"
logico <- TRUE

# -------------------------------
# Verificar el tipo de variable
# -------------------------------
print(class(a))       # "numeric"
print(class(b))       # "numeric"
print(class(c))       # "numeric"
print(class(texto))   # "character"
print(class(logico))  # "logical"

# -------------------------------
# Operadores aritméticos
# -------------------------------
suma <- a + b
resta <- a - c
producto <- b * b
division <- b / b
potencia <- a^b
modulo <- b %% c     # Residuo

# Mostrar resultados
print(paste("Suma:", suma))
print(paste("Producto:", producto))

# -------------------------------
# Operadores comparativos
# -------------------------------
print(a > b)     # TRUE
print(a == b)    # FALSE

# -------------------------------
# Operadores lógicos
# -------------------------------
x <- TRUE
y <- FALSE

print(x & y)     # FALSE 
print(x | y)     # TRUE 


# ----------------------------
# Estructuras de Datos en R
# ----------------------------

# 1. VECTORES (con c())
vector_numerico <- c(3, 2, 3, 4, 8)
vector_caracter <- c("rojo", "azul", "verde")
vector_logico <- c(TRUE, FALSE, TRUE)

print("Vector numérico:")
print(vector_numerico)

print("Vector de caracteres:")
print(vector_caracter)

print("Vector lógico:")
print(vector_logico)

# 1.1 Índices: [fila, columna]

vector_numerico[1]    # Resultado: 3
vector_caracter[3]    # Resultado: verde
vector_logico[1:3]    # Resultado: TRUE FALSE  TRUE (del primero al tercero)
vector_numerico[c(1, 5)]  # Resultado: 3 8 (elementos 1 y 5)


# 1.2. FACTORES (datos categóricos)
colores <- factor(c("rojo", "azul", "verde", "rojo", "azul"))
print("Factor:")
print(colores)
print("Niveles del factor:")
print(levels(colores))

# 2. MATRICES (con matrix())
matriz <- matrix(1:9, nrow = 3, ncol = 3)
print("Matriz 3x3:")
print(matriz)

# 2.1 Índices: [fila, columna]

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

# 4.1 Índices: [fila, columna]
                                                                   
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
                                                                   
                                                                   