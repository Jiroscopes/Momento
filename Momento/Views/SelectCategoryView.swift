//
//  SelectCategoryView.swift
//  Momento
//
//  Created by Steven on 10/9/23.
//

import SwiftUI

struct SelectCategoryView: View {
    // TODO: Store this somewhere globally
    let allCategories = Category.sampleData
    // NOTE: This will need to be @State
    var selectedCategories: [Category] = []
    var body: some View {
        List(allCategories) { category in
            Text(category.name)
        }
    }
}

#Preview {
    SelectCategoryView(selectedCategories: [Category.sampleData[0]])
}
