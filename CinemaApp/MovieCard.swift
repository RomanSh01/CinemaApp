//
//  MovieCard.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 23/08/2022.
//

import SwiftUI

struct MovieCard: View {
    var photo: Movie = movieList[2]
    
    var body: some View {
      //
            
            Image(photo.movieName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(y: -70)
                .overlay {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("MATRIX")
                            .bold()
                            .font(.largeTitle)
                        Text("Description: ")
                            .bold()
                        
                        Text("2002")
                    }
                    
                    .frame(width: 390, height: 200)
                    .background(photo.gradient)
                    .cornerRadius(40)
                    .offset(y: 320)
                }
                .offset(y: -25)

            
        }
        
  //  }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard()
    }
}
