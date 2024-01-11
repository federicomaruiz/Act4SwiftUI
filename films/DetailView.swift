//
//  DetailView.swift
//  films
//
//  Created by Federico Ruiz on 10/1/24.
//

import SwiftUI

struct DetailView: View {
    
    let movie: Movie
    
    var body: some View {
        VStack(alignment:.leading){
            movie.image
                .resizable()
                .scaledToFill()
                .frame(height:400)
                .padding(.bottom,90)
                
            HStack {
                    Text(movie.name)
                           .font(.title)
                           .padding(.leading, 5)
                       
                    Spacer() // Empujar la estrella a la derecha
                       
                    Image(systemName: "star.fill")
                           .foregroundColor(.yellow)
                           .padding(.trailing, 5)
                           .font(.system(size: 30))
                   }
            Text(movie.year)
                .padding(.top,1)
                .foregroundColor(Color.red)
                .padding(.leading, 5)
            Text("Sinopsis")
                .foregroundColor(Color.gray)
                .padding(.leading, 5)
                .padding(.vertical, 1)
            Text(movie.sinopsis)
                .padding(.bottom)
                .padding(.leading, 5)
                .lineLimit(10)
                .font(.system(size: 14))
            Text("Géneros")
                .foregroundColor(Color.gray)
                .padding(.leading, 5)
                .padding(.vertical, 1)
            HStack{
                ForEach(movie.genres, id: \.self) { genre in
                    Text(genre)
                        .font(.system(size: 12))
                        .padding(4)
                        .padding(EdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 4)) // Ajusta los márgenes
                        .foregroundColor(Color.black)
                        .padding(.leading, 2)
                        .padding(.vertical, 1) // Márgenes verticales
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(UIColor.systemGray4)))
                    
                } 
                .padding(.leading, 5)
            }
        }
        .padding(.top, -130) // Muevo la imagen hacia arriba
        .frame(maxHeight: .infinity) // Para que ocupe todo
    
    }
}

#Preview {
    DetailView(movie:Movie(name: "Joker",score: "8.4", image: Image("imgJoker"), year: "2019", sinopsis: "Una película sobre el famoso villano de DC Comics. La trama se sumerge en la psique del Joker, explorando sus orígenes y su viaje hacia la locura. Con una actuación magistral de Joaquin Phoenix, esta película es un viaje emocional y perturbador.", genres: ["Drama", "Crimen", "Thriller"]))
}
