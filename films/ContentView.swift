//
//  ContentView.swift
//  films
//
//  Created by Federico Ruiz on 10/1/24.
//

import SwiftUI

struct ContentView: View {
    
    let gridItem: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    @State private var searchText = ""

    
    var body: some View {
        NavigationView {
            ScrollView {
                SearchBar(text: $searchText) // Barra de búsqueda
                    .padding([.leading, .trailing, .top])
                Text("Peliculas")
                    .font(.title3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top)

                LazyVGrid(columns: gridItem, spacing: 8) {
                    
                    ForEach(movies) { item in
                        NavigationLink(destination: DetailView(movie: item)) {
                            VStack(alignment: .leading, spacing: 8) {
                        
                                ZStack{
                                    item.image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(height: 230)
                                        .cornerRadius(10)
                                    
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(Color.red)
                                        .overlay(
                                            Text(item.score)
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        )
                                        .offset(x: 72, y: -110)
                                        .padding(8)
                                    
                                    
                                }
                                Text(item.name)
                                    .bold()
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.black)
                
                                Text(item.genres[0])
                                    .font(.system(size: 12))
                                    .padding(4)
                                    .padding(EdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 4)) // Ajusta los márgenes
                                    .foregroundColor(Color.black)
                                    .padding(.leading, 2)
                                    .padding(.vertical, 1) // Márgenes verticales
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(UIColor.systemGray4)))
                            }
                            .padding()
                           
                        }
                  
                    }
    
                }
   
            }
            .navigationTitle("FilmView").bold()
    
        }
    }
}



#Preview {
    ContentView()
}
