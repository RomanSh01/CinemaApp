//
//  ContentView.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 3) {
                        
                        ForEach(movieList) { item in
                            NavigationLink(destination: MovieCard(photo: item)) {
                                SmallCard(photo: item)
                                   .navigationBarTitle("CINEMA CITY", displayMode: .inline)
                                    //       .navigationBarHidden(true)
                        }
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    .padding(.leading, 15)

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
