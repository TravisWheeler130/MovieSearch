//
//  MovieConstants.swift
//  MovieSearch
//
//  Created by Travis Wheeler on 10/4/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation
/*
 https://api.themoviedb.org/3/search/movie?api_key=1319e8ab1587c2053ec061ec97482f2f&language=en-US&query=Star%20Trek&page=1&include_adult=false
 */
struct MovieConstants {
    static let baseURL = "https://api.themoviedb.org/3/search/movie?api_key=1319e8ab1587c2053ec061ec97482f2f&language=en-US"
    static let keyItem = "search"
}
