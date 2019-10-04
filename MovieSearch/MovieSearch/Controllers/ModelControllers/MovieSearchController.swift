//
//  MovieSearchController.swift
//  MovieSearch
//
//  Created by Travis Wheeler on 10/4/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

class MovieSearchController {
    let baseURL = URL(string: MovieConstants.baseURL)
    
    static let shared = MovieSearchController()
    
    func fetchMovies(with searchText: String, completion: @escaping ([MovieResultsDict]) -> Void) {
        guard let url = baseURL else {completion([]); return}
        var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        let queryItem = URLQueryItem(name: MovieConstants.keyItem, value: searchText)
        
        urlComponents?.queryItems = [queryItem]
        
        guard let finalURL = urlComponents?.url else {completion([]); return}
    }
}
