//
//  ContentView.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var favorietsManager = FavorietsManager()
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 3) {
                        
                        ForEach(movieList) { item in
                            NavigationLink(destination: MovieCard(photo: item)) {
                                SmallCard(photo: item)
                                    .environmentObject(favorietsManager)
                                    .navigationBarTitle("CINEMA CITY", displayMode: .inline)
                            }
                        }
                        .padding(.top, 15)
                        .padding(.bottom, 15)
                        .padding(.leading, 15)
                        .toolbar {
                            NavigationLink {
                                FavorietsView()
                                    .environmentObject(favorietsManager)
                                
                            } label: {
                                FavorietsButton(numberOfFilms: favorietsManager.movies.count)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
