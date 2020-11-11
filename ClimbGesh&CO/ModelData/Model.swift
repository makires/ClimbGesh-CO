//
//  TodoItem.swift
//  ClimbGesh&CO
//
//  Created by Tatiana Ilvutikova on 12.11.2020.
//

import Foundation

struct ClimbingLocation: Codable, Identifiable {
    let id: Int
    let name: String
    let imageLocation: String
    let imageForView: String?
    let crags: [Crag]
    
}
struct Crag: Codable, Identifiable {
    let id = UUID()
    let cragName: String
    let imageName: String?
    let collectionImages: [String]
    let routes: [Route]
    let descriptionCrag: String?
    
}
struct Route: Codable, Identifiable {
    let id = UUID()
    let name: String
    let grade: String
    let bolts: String
}
