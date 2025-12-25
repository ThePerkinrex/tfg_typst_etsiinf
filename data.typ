#let estudios = "[ESTUDIOS, ej. Grado]"
#let titulo_estudios = "[TÍTULO DE LOS ESTUDIOS, ej. Ingeniería Informática]"
#let departamento = "[DEPARTAMENTO, ej. Departamento de Lenguajes y Sistemas Informáticos e Ingeniería de Software]"
#let nombre_autor = "[NOMBRE Y APELLIDOS]"
#let nombre_tutor = "[NOMBRE Y APELLIDOS]"
#let titulo_trabajo = "[Título del Trabajo, con Mayúscula en Todas las Palabras que no Sean Conectivas (Artículos, Preposiciones, Conjunciones)]"

// Escribe la fecha de lectura, en formato: mes año (ej. Enero 2021)
// El día no importa, no se mostrará
#let fecha = datetime(day: 10, month: 1, year: 2021) // TODO revisar

#set document(author: nombre_autor, title: titulo_estudios, date: fecha)