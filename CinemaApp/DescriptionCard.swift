//
//  DescriptionCard.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 23/08/2022.
//

import SwiftUI

struct DescriptionCard: View {
    var photo: Movie = movieList[1]

    var body: some View {
        
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                Text("Warcraft")
                    .frame(width: .infinity)
                Text("Fantasy")
                Text("2021")
            }
            .frame( height: 150)
            .frame(maxWidth: .infinity)
            .background(Color.green)
        .cornerRadius(30)
        .offset(y: 35)
        }
        
    }
}

struct DescriptionCard_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionCard()
    }
}
