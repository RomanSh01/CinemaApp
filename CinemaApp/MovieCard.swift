//
//  MovieCard.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 23/08/2022.
//

import SwiftUI

struct MovieCard: View {
    
    var photo: Movie = movieList[0]
    
    var body: some View {
        
            VStack {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(y: -70)
                .overlay {
                    
                    VStack(spacing: 20) {
                        Text(photo.movieName)
                            .font(.largeTitle)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        VStack(spacing: 20) {
                            Text(photo.description)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(photo.year)
                                .foregroundColor(.black)
                            
                        }
                    }
                    .navigationBarHidden(true)
                    .frame(width: 390, height: 200)
                    .background(photo.gradient)
                    .cornerRadius(40)
                    .offset(y: 320)
                }
        }
//            .overlay(
//            Button(action: <#T##() -> Void#>, label: <#T##() -> _#>)
//            )
    }
    }



struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard()
    }
}
