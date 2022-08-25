//
//  Data.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 23/08/2022.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var movieName: String
    var gradient: LinearGradient
}

var movieList = [
    Movie(movieName: "warcraft", gradient: LinearGradient(colors: [Color.blue, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing)),
          Movie(movieName: "matrix", gradient: LinearGradient(colors: [Color.green, Color.gray], startPoint: .topLeading, endPoint: .bottomTrailing)),
          Movie(movieName: "godzillakong", gradient: LinearGradient(colors: [Color.black, Color.orange], startPoint: .topLeading, endPoint: .bottomTrailing)),
    Movie(movieName: "starwars", gradient: LinearGradient(colors: [.black, .gray], startPoint: .topLeading, endPoint: .bottomTrailing)),
    Movie(movieName: "batmanvssuperman", gradient: LinearGradient(colors: [.blue, .black], startPoint: .topLeading, endPoint: .bottomTrailing)),
    Movie(movieName: "wonderwomen", gradient: LinearGradient(colors: [Color.red, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)),
    Movie(movieName: "joker", gradient: LinearGradient(colors: [Color.white, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing))
]
