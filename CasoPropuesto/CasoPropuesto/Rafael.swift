import Foundation

// Frase
// var frase = "Welcome to Tecsup today is a beautiful day"
var frase = "In Tecsup we are learning Swift"

// Conectores
let conectores = ["to", "is", "in", "are", "a"]

// Tracduccion diccionario
let traduccion = [
    "welcome": "bienvenido",
    "tecsup": "tecsup",
    "today": "hoy",
    "beautiful": "hermoso",
    "day": "día",
    "we": "nosotros",
    "learning": "aprendiendo",
]

// Separar palabras
let palabras = frase.lowercased().split(separator: " ")

// Traducir sin conecctores
var resultado: [String] = []// arreglo

for palabra in palabras {
    if !conectores.contains(String(palabra)) {
        if let traducida = traduccion[String(palabra)] {
            resultado.append(traducida)
        } else {
            resultado.append(String(palabra))
        }
    }
}

// Resultado
print("Traducción:\n")
for palabra in resultado {
    print(palabra)
}
