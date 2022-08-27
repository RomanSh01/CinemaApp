//
//  FaforietsManager.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 27/08/2022.
//

import Foundation

class FavorietsManager: ObservableObject {
    @Published private(set) var movies: [Movie] = []
    
    func addToFav(movie: Movie) {
        
        movies.append(movie)
        
    }
    
    func removeFromFav(movie: Movie) {
        
        movies = movies.filter  { $0.id != movie.id}
    }
}
