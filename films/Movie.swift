//
//  Movie.swift
//  films
//
//  Created by Federico Ruiz on 10/1/24.
//

import Foundation
import SwiftUI

struct Movie: Identifiable{
    let id = UUID()
    let name : String
    let score : String
    let image : Image
    let year : String
    let sinopsis: String
    let genres : [String]
    
}


let movies: [Movie] = [
    Movie(name: "Joker", score: "8.4", image: Image("imgJoker"), year: "2019", sinopsis: "Una película sobre el famoso villano de DC Comics. La trama se sumerge en la psique del Joker, explorando sus orígenes y su viaje hacia la locura. Con una actuación magistral de Joaquin Phoenix.", genres: ["Drama", "Crimen", "Thriller"]),
    
    Movie(name: "El Señor de los Anillos", score: "9", image: Image("imgSeñorAnillos"), year: "2001", sinopsis: "Una épica aventura basada en la obra de J.R.R. Tolkien. El viaje de Frodo y su compañía para destruir el Anillo Único lleva a los espectadores a un mundo de magia, criaturas fantásticas y batallas épicas.", genres: ["Aventura", "Fantasía"]),
    
    Movie(name: "Pulp Fiction", score: "8.9", image: Image("imgPulpFiction"), year: "1994", sinopsis: "Una historia entrelazada de crimen y violencia dirigida por Quentin Tarantino. 'Pulp Fiction' es un mosaico de narrativas que se entrecruzan, llenas de diálogos ingeniosos, personajes memorables y momentos icónicos.", genres: ["Crimen", "Drama"]),
    
    Movie(name: "El Caballero Oscuro", score: "9", image: Image("imgCaballero"), year: "2008", sinopsis: "La épica continuación de Batman Begins dirigida por Christopher Nolan. Enfrentando al Caballero Oscuro contra el Joker, interpretado brillantemente por Heath Ledger, la película ofrece una narrativa oscura, intensa y llena de giros.", genres: ["Acción", "Crimen", "Drama"])
]
