//
//  FavorietsButton.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 27/08/2022.
//

import SwiftUI

struct FavorietsButton: View {
    var numberOfFilms: Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
        Image(systemName: "star")
                .padding(5)
            
            if numberOfFilms > 0 {
                Text("\(numberOfFilms)")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(20)
            }
        }
    }
}

struct FavorietsButton_Previews: PreviewProvider {
    static var previews: some View {
        FavorietsButton(numberOfFilms: 1)
    }
}
