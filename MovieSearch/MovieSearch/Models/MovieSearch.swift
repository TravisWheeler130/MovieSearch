//
//  MovieSearch.swift
//  MovieSearch
//
//  Created by Travis Wheeler on 10/4/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

// Declare a struct TopLevelDictionary and conform to Decodable
struct TopLevelDict: Decodable {
    // defining results as an array of MovieResults
    let results: [MovieResultsDict]
}
// Declare a struct MovieResults and also conform that to Decodable.. This is the array listed above
struct MovieResultsDict: Decodable {
    // made an enum CodingKeys to allow me to use different (simpler) variables when referensing the API code
    enum CodingKeys: String, CodingKey {
        case title
        case rating = "vote_average"
        case overview
        case poster = "poster_path"
    }
    // Declare the information in the array of MovieResults that we want to use and defining their type.
    let title: String
    let rating: Double
    let overview: String
    let poster: String
}
