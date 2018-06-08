//
//  GPHStickersPack.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 08/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

struct GPHStickersPack: Decodable {
    
    enum StickerPackType: String {
        case sticker
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case parentId = "parent"
        case type
        case contentType = "content_type"
        case displayName = "display_name"
        case shortDisplayName = "short_display_name"
        case description
        case bannerImage = "banner_image"
        case hasChildren = "has_children"
        case user
        case featuredGif = "featured_gif"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
    }
}
