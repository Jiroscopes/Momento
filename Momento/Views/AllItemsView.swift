import SwiftUI

struct AllItemsView: View {
    var items: [Item]
    
    var body: some View {
        NavigationStack {
            List(items) { item in
                NavigationLink(destination: ItemView(item: item)) {
                    ItemCardView(item: item)
                }
            }
            .navigationTitle("Pins")
        }
    }
}

struct AllItemsView_Previews: PreviewProvider {
    static var previews: some View {
        AllItemsView(items: Item.sampleData)
    }
}
