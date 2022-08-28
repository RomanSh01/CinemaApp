//
//  SmallCard.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 23/08/2022.
//

import SwiftUI

struct SmallCard: View {
    @EnvironmentObject var favorietsManager: FavorietsManager
    var photo: Movie = movieList[1]
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .cornerRadius(20)
                .shadow(color: .black, radius: 5)
            
            Button {
                favorietsManager.addToFav(movie: photo)
            } label: {
                Image(systemName: "star")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(20)
                    .padding(5)
            }
        }
    }
}

struct SmallCard_Previews: PreviewProvider {
    static var previews: some View {
        SmallCard()
            .environmentObject(FavorietsManager())
    }
}
