//
//  Category.swift
//  Momento
//
//  Created by Steven on 10/9/23.
//

import Foundation

struct Category: Identifiable {
    var id: UUID
    let name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

// Test Data
extension Category {
    static let sampleData: [Category] = [
        Category(name: "Memes"),
        Category(name: "News"),
        Category(name: "Read Later"),
    ]
}
