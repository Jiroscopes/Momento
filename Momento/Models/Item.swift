import SwiftUI

struct Item: Identifiable {
    var id: UUID
    var title: String
    var type: ItemType
    var categories: [ItemCategory]
    var source: ItemSource
//    var content: ItemContent
    
    // Pull from share metadata
    struct ItemSource {
        let name: String
    }
    
//    struct ItemContent {
//        var contentType: ContentType
//        var content: Any
//    }
    
    init(id: UUID = UUID(), title: String, type: ItemType, categories: [ItemCategory], source: ItemSource) {
        self.id = id
        self.title = title
        self.type = type
        self.categories = categories
        self.source = source
//        self.content = content
    }
}

//extension Item {
//    enum ContentType: String {
//        case image
//        case text
//        case video
//        case link
//    }
//}

extension Item {
    enum ItemType: String {
        case socialMedia
        case website
        case video
        case photo
        
        // For Display
        var name: String {
            switch self {
            case .socialMedia: return "Social Media"
            case .website: return "Website"
            case .video: return "Video"
            case .photo: return "Photo"
            }
        }
    }
}

extension Item {
    // User defined categories. Some defaults will exist
    struct ItemCategory: Identifiable {
        var id: UUID
        let name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}

// Sample Items
extension Item {
    static let sampleData: [Item] =
    [
        Item(title: "TIL: Jefe", type: .socialMedia, categories: [ItemCategory(name: "Shitposting"), ItemCategory(name: "r/copypasta"), ItemCategory(name: "Shitposting"), ItemCategory(name: "Shitposting")], source: ItemSource(name: "Reddit")),
        Item(title: "Motorcycle video", type: .socialMedia, categories: [ItemCategory(name: "r/motorcycles")], source: ItemSource(name: "Reddit")),
        Item(title: "Learn how to make burger", type: .website, categories: [ItemCategory(name: "Tutorial")], source: ItemSource(name: "YouTube")),
    ]
}
