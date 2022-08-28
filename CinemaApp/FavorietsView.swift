//
//  FavorietsView.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 27/08/2022.
//

import SwiftUI

struct FavorietsView: View {
    @EnvironmentObject var favorietsManager: FavorietsManager
    
    var body: some View {
        
        ScrollView {
            if favorietsManager.movies.count > 0 {
                ForEach(favorietsManager.movies, id: \.id) {
                    film in
                    FilmRow(film: film)
                }
                
            } else {
                Text("List of favoriets is empty")
            }
        }
    }
}

struct FavorietsView_Previews: PreviewProvider {
    static var previews: some View {
        FavorietsView()
            .environmentObject(FavorietsManager())
    }
}
