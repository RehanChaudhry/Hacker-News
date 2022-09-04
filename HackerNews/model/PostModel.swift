//
//  PostModel.swift
//  HackerNews
//
//  Created by Rehan Chaudhry on 26/08/2022.
//

import Foundation

struct Results: Decodable {
    
    let hits: [Post]
    
    
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
    
}
