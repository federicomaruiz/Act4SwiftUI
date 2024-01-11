//
//  SearchBar.swift
//  films
//
//  Created by Federico Ruiz on 11/1/24.
//

// SearchBar.swift

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Buscar película", text: $text)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1).background(Color.white))
                .cornerRadius(10)
                .padding(.leading, 5)
                Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
                .offset(x: -40)
        }
    }
}
