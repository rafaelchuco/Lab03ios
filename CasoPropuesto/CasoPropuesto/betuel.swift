import Foundation

let frase1 = "Welcome to Tecsup, today is a beautiful day"
let frase2 = "In Tecsup, we are learning Swift"

let conectores = ["to", "is", "in", "are", "a", "we"]

let traduccion: [String: String] = [
    "Welcome": "Bienvenido",
    "today": "hoy",
    "beautiful": "hermoso",
    "day": "día",
    "learning": "aprendiendo",
]

func procesar(frase: String) -> String {
    frase
        .replacingOccurrences(of: ",", with: "")
        .components(separatedBy: " ")
        .filter { !conectores.contains($0.lowercased()) }
        .map { traduccion[$0] ?? $0 }
        .joined(separator: " ")
}

print(procesar(frase: frase1))
print(procesar(frase: frase2))