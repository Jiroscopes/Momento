//
//  MomentoApp.swift
//  Momento
//
//  Created by Steven on 9/4/23.
//

import SwiftUI

@main
struct MomentoApp: App {
    var body: some Scene {
        WindowGroup {
            AllItemsView(items: Item.sampleData)
        }
    }
}
