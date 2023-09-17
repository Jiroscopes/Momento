//
//  ItemCardView.swift
//  Momento
//
//  Created by Steven on 9/4/23.
//

import SwiftUI

struct ItemCardView: View {
    var item: Item
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title)
                .fontWeight(.bold)
            ScrollView(.horizontal) {
                HStack {
                    Text(item.source.name)
                        .padding(4)
                        .background(.green)
                        .cornerRadius(4)
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .fixedSize()
                    ForEach(item.categories) { category in
                        Text(category.name)
                            .padding(4)
                            .background(.red)
                            .cornerRadius(4)
                            .foregroundColor(.white)
                            .lineLimit(1)
                    }
                }
            }
        }
    }
}

struct ItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardView(item: Item.sampleData[0])
    }
}
