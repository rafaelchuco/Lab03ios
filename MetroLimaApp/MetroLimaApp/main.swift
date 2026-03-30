import Foundation

//  Estructura del Metro de Lima 2040
var metroLima: [String: [String]] = [

    "Linea 1": [
        "Villa El Salvador", "Parque Industrial", "Pumacahua",
        "Villa María", "María Auxiliadora", "San Juan",
        "Atocongo", "Jorge Chávez", "Ayacucho", "Cabitos",
        "Angamos", "San Borja Sur", "La Cultura", "Arriola",
        "Gamarra", "Veintiocho de Julio", "Miguel Grau",
        "El Ángel", "Presbítero Maestro", "Rio Rímac",
        "Caja de Agua", "Pirámide del Sol", "Los Jardines",
        "Los Postes", "San Carlos", "San Martín",
        "Santa Rosa", "Bayóvar"
    ],

    "Linea 2": [
        "Puerto del Callao", "Buenos Aires", "Juan Pablo II",
        "Insurgentes", "Carmen de La Legua", "Óscar R. Benavides",
        "San Marcos", "Elio", "La Alborada", "Tingo María",
        "Parque Murillo", "Plaza Bolognesi", "Estación Central",
        "Plaza Manco Cápac", "Cangallo", "Veintiocho de Julio",
        "Nicolas Ayllón", "Circunvalación", "San Juan de Dios",
        "Evitamiento", "Óvalo Santa Anita", "Colectora Industrial",
        "Hermilio Valdizán", "Mercado Santa Anita",
        "Vista Alegre", "Prolongación Javier Prado",
        "Municipalidad de Ate"
    ],

    "Linea 3": [
        "El Álamo", "Huandoy", "2 de Octubre", "Villa Sol",
        "Naranjal", "Carlos Izaguirre", "Tomás Valle",
        "Bartolomé de las Casas", "José Granda", "Caquetá",
        "Tacna", "Garcilaso de la Vega", "Estación Central",
        "Parque de la Reserva", "Museo de Historia Natural",
        "César Canevaro", "Conde de San Isidro",
        "Andrés Aramburú", "Huaca Pucllana",
        "Parque Central de Miraflores", "Parque Reducto",
        "Panamá", "Juana Alarco", "Cabitos",
        "Alejandro Velasco", "Las Gardenias",
        "Los Héroes", "Pedro Miotta"
    ],

    "Linea 4": [
        "Gambetta", "Canta Callao", "Boca Negra",
        "Aeropuerto", "El Olivar", "Quilca",
        "Rio Rímac", "Morales Duárez", "Carmen de La Legua"
    ]
]


//  Consultar estaciones de una línea
func estacionesDeLinea(linea: String) {
    if let estaciones = metroLima[linea] {
        print("Estaciones de \(linea):")
        for est in estaciones {
            print("- \(est)")
        }
    } else {
        print("Línea no encontrada")
    }
}


// Consultar a qué línea(s) pertenece una estación
func lineasDeEstacion(estacion: String) {
    var resultado: [String] = []
    
    for (linea, estaciones) in metroLima {
        if estaciones.contains(estacion) {
            resultado.append(linea)
        }
    }
    
    if resultado.isEmpty {
        print("La estación no existe")
    } else {
        print("La estación \(estacion) pertenece a: \(resultado)")
    }
}


// Verificar si estación pertenece a una línea
func estacionEnLinea(estacion: String, linea: String) {
    if let estaciones = metroLima[linea] {
        if estaciones.contains(estacion) {
            print("Sí, \(estacion) pertenece a \(linea)")
        } else {
            print("No, \(estacion) NO pertenece a \(linea)")
        }
    } else {
        print("Línea no encontrada")
    }
}


//  Cantidad de estaciones de una línea
func cantidadEstaciones(linea: String) {
    if let estaciones = metroLima[linea] {
        print("\(linea) tiene \(estaciones.count) estaciones")
    } else {
        print("Línea no encontrada")
    }
}


// Pruebas

print("------ PRUEBAS ------\n")

estacionesDeLinea(linea: "Linea 1")

print("\n--------------------\n")

lineasDeEstacion(estacion: "Estación Central")

print("\n--------------------\n")

estacionEnLinea(estacion: "Cabitos", linea: "Linea 3")

print("\n--------------------\n")

cantidadEstaciones(linea: "Linea 2")
