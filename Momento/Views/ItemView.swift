//
//  ItemView.swift
//  Momento
//
//  Created by Steven on 9/4/23.
//

import SwiftUI
import CachedAsyncImage

struct ItemView: View {
    var item: Item
    var body: some View {
        VStack {
            ScrollView {
                VStack() {
                    if let thumbnail = item.thumbnail {
                        CachedAsyncImage(
                         url: URL(string: thumbnail),
                         content: { image in
                             image
                                 .resizable()
                                 .aspectRatio(contentMode: .fill)
                                 .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 300)
                                 .clipped()
                                 .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                         },
                         placeholder: {
                             ProgressView()
                                .frame(maxWidth: UIScreen.main.bounds.width, minHeight: 300, maxHeight: 300)
                         }
                        )
                    } else {
                        Image(item.source.thumbnail)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 50, maxHeight: 50)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .frame(maxWidth: UIScreen.main.bounds.width - 30, maxHeight: UIScreen.main.bounds.height, alignment: .leading)
                .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 5)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text(item.title)
                        .bold()
                    Text(item.source.name)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(15)
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item.sampleData[0])
    }
}
