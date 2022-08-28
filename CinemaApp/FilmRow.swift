//
//  FilmRow.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 27/08/2022.
//

import SwiftUI

struct FilmRow: View {
    @EnvironmentObject var favorietsManager: FavorietsManager
    var film: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(film.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(film.movieName)
                    .bold()
                
                Text(film.description)
                    .font(.caption2)
                
                Text(film.year)
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    favorietsManager.removeFromFav(movie: film)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct FilmRow_Previews: PreviewProvider {
    static var previews: some View {
        FilmRow(film: movieList[1])
            .environmentObject(FavorietsManager())
    }
}
