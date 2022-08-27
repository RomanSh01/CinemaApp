//
//  Data.swift
//  CinemaApp
//
//  Created by Роман Шабардин on 23/08/2022.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var imageName: String
    var gradient: LinearGradient
    var movieName: String
    var description: String
    var year: String
}

var movieList = [
    Movie(imageName: "warcraft", gradient: LinearGradient(colors: [Color("Color1"), Color("Color2")], startPoint: .topLeading, endPoint: .bottomTrailing), movieName: "WARCRAFT", description: "Action   Adventure   Fantasy", year: "2016"),
    Movie(imageName: "matrix", gradient: LinearGradient(colors: [Color.green, Color.gray], startPoint: .topLeading, endPoint: .bottomTrailing), movieName: "MATRIX", description: "Action   Sci-Fi   Thriller", year: "1999"),
    Movie(imageName: "godzillakong", gradient: LinearGradient(colors: [.green, .red], startPoint: .topLeading, endPoint: .bottomTrailing), movieName: "GODZILLA  vs KONG", description: "Action   Sci-Fi   Thriller", year: "2021"),
    Movie(imageName: "starwars", gradient: LinearGradient(colors: [.black, .red], startPoint: .topLeading, endPoint: .bottomTrailing), movieName: "STAR WARS", description: "Action   Adventure   Fantasy", year: "2017"),
    Movie(imageName: "batmanvssuperman", gradient: LinearGradient(colors: [.black, .blue], startPoint: .topLeading, endPoint: .bottomTrailing), movieName: "BATMAN vs SUPERMAN", description: "Action   Adventure   Sci-Fi", year: "2016"),
    Movie(imageName: "wonderwomen", gradient: LinearGradient(colors: [Color.orange, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing), movieName: "WONDER WOMEN", description: "Action   Adventure   Fantasy", year: "2017"),
    Movie(imageName: "joker", gradient: LinearGradient(colors: [Color.black, Color.green], startPoint: .topLeading, endPoint: .bottomTrailing), movieName: "JOKER", description: "Crime   Drama   thriller", year: "2019")
]

let color1 = Color("Color1")
