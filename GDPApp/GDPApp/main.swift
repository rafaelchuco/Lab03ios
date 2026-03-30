import Foundation

// Arreglos
var paises = ["Argentina", "Bolivia", "Brasil", "Chile", "Colombia", "Ecuador", "México", "Paraguay", "Perú", "Uruguay", "Venezuela"]

var gdp2025: [Double] = [683.371, 57.086, 2256.910, 347.174, 438.121, 130.529, 1862.740, 47.398, 318.480, 84.986, 82.767]

//  Acceder a elementos GDP Bolivia 
if let indexBolivia = paises.firstIndex(of: "Bolivia") {
    print("GDP de Bolivia 2025: \(gdp2025[indexBolivia]) billones USD")
}

//  Modificar elementos
if let indexPeru = paises.firstIndex(of: "Perú") {
    gdp2025[indexPeru] = 330.000
    print("GDP de Perú actualizado (2026): \(gdp2025[indexPeru])")
}

// Mostrar GDP de Perú
if let indexPeru = paises.firstIndex(of: "Perú") {
    print("GDP actual de Perú: \(gdp2025[indexPeru])")
}

// Restaurar GDP Perú 2025
if let indexPeru = paises.firstIndex(of: "Perú") {
    gdp2025[indexPeru] = 318.480
    print("GDP de Perú restaurado (2025): \(gdp2025[indexPeru])")
}

//  Promedio
var suma = 0.0
for valor in gdp2025 {
    suma += valor
}
let promedio = suma / Double(gdp2025.count)
print("Promedio GDP (clásico): \(promedio)")

// Promedio con reduce
let promedioReduce = gdp2025.reduce(0, +) / Double(gdp2025.count)
print("Promedio GDP (reduce): \(promedioReduce)")

// GDP más alto
if let maxGDP = gdp2025.max() {
    print("GDP más alto: \(maxGDP)")
}
// Filtrar países con GDP > 300
var paisesFiltrados: [String] = []

for i in 0..<gdp2025.count {
    if gdp2025[i] > 300 {
        paisesFiltrados.append(paises[i])
    }
}

print("Países con GDP > 300:", paisesFiltrados)

// Ordenar países por GDP
let combinado = zip(paises, gdp2025)
let ordenado = combinado.sorted { $0.1 > $1.1 }

print("\nPaíses ordenados por GDP (mayor a menor):")
for (pais, gdp) in ordenado {
    print("\(pais): \(gdp)")
}

