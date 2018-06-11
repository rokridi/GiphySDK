//
//  GPHStickersPack.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 08/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHStickersPack: Decodable {
    
    public enum StickerPackContentType: String, Decodable {
        case sticker
    }
    
    private enum CodingKeys: String, CodingKey {
        case id
        case parentId = "parent"
        case type
        case contentType = "content_type"
        case displayName = "display_name"
        case shortDisplayName = "short_display_name"
        case packDescription
        case bannerImage = "banner_image"
        case hasChildren = "has_children"
        case user
        case featuredGif = "featured_gif"
        case tags
        case ancestors
    }
    
    public let id: String
    public let parentId: String
    public let type: String
    public let contentType: StickerPackContentType
    public let displayName: String
    public let shortDisplayName: String
    public let packDescription: String
    public let bannerImage: URL
    public let hasChildren: Bool
    public let user: GPHUser
    public let featuredGif: GPHGif
    public let tags: [GPHTag]
    public let ancestors: [GPHStickersPack]
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        parentId = try container.decode(String.self, forKey: .parentId)
        type = try container.decode(String.self, forKey: .type)
        contentType = try container.decode(StickerPackContentType.self, forKey: .contentType)
        displayName = try container.decode(String.self, forKey: .displayName)
        shortDisplayName = try container.decode(String.self, forKey: .shortDisplayName)
        packDescription = try container.decode(String.self, forKey: .packDescription)
        bannerImage = try container.decode(URL.self, forKey: .bannerImage)
        hasChildren = try container.decode(Bool.self, forKey: .hasChildren)
        user = try container.decode(GPHUser.self, forKey: .user)
        featuredGif = try container.decode(GPHGif.self, forKey: .featuredGif)
        tags = try container.decode([GPHTag].self, forKey: .tags)
        ancestors = try container.decode([GPHStickersPack].self, forKey: .ancestors)
    }
}
