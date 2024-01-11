//
//  ModalView.swift
//  films
//
//  Created by Federico Ruiz on 10/1/24.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("ventana modal")
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    ModalView()
}
