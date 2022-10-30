//
//  PostData.swift
//  Hacker News
//
//  Created by Ivan Gonzalez on 29/10/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable { //We need the identifiable in order to help the List know the order of objects.
    var id: String {
        return objectID
    } //computed property
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
