//
//  MovieSearch.swift
//  MovieSearch
//
//  Created by Travis Wheeler on 10/4/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

struct TopLevelDict: Decodable {
    let results: [MovieResults]
}

struct MovieResults: Decodable {
    enum CodingKeys: String, CodingKey {
        case title
        case rating = "vote_average"
        case overview
        case poster = "poster_path"
    }
    
    let title: String
    let rating: Double
    let overview: String
    let poster: String
}
