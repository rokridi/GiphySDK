//
//  GPHGif.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 07/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHGif: Decodable {
    
    private enum CodingKeys: String, CodingKey {
        case type
        case id
        case slug
        case url
        case bitlyGifUrl = "bitly_gif_url"
        case bitlyUrl = "bitly_url"
        case embedUrl = "embed_url"
        case userName = "username"
        case source
        case rating
        case contentUrl = "content_url"
        case user
        case sourceTld = "source_tld"
        case sourcePostUrl = "source_post_url"
        case isSticker = "is_sticker"
        case updateDatetime = "update_datetime"
        case createDatetime = "create_datetime"
        case importDatetime = "import_datetime"
        case trendingDatetime = "trending_datetime"
        case images
        case title
        case score = "_score"
        case caption
    }
    
    public var type: GPHGifType
    public var id: String
    public var slug: String
    public var url: String
    public var bitlyGifUrl: String
    public var bitlyUrl: String
    public var embedUrl: String
    public var userName: String
    public var source: String
    public var rating: GPHGifRating
    public var contentUrl: String
    public var user: GPHUser?
    public var sourceTld: String
    public var sourcePostUrl: String
    public var isSticker: Bool
    public var updateDatetime: String?
    public var createDatetime: String?
    public var importDatetime: String?
    public var trendingDatetime: String?
    public var images: GPHImages
    public var title: String
    public var score: Double
    public var caption: String?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        self.type = GPHGifType(rawValue: type) ?? .unknown
        
        id = try container.decode(String.self, forKey: .id)
        slug = try container.decode(String.self, forKey: .slug)
        url = try container.decode(String.self, forKey: .url)
        bitlyGifUrl = try container.decode(String.self, forKey: .bitlyGifUrl)
        bitlyUrl = try container.decode(String.self, forKey: .bitlyUrl)
        embedUrl = try container.decode(String.self, forKey: .embedUrl)
        userName = try container.decode(String.self, forKey: .userName)
        source = try container.decode(String.self, forKey: .source)
        rating = try container.decode(GPHGifRating.self, forKey: .rating)
        contentUrl = try container.decode(String.self, forKey: .contentUrl)
        user = try container.decodeIfPresent(GPHUser.self, forKey: .user)
        sourceTld = try container.decode(String.self, forKey: .sourceTld)
        sourcePostUrl = try container.decode(String.self, forKey: .sourcePostUrl)
        isSticker = try container.decode(Int.self, forKey: .isSticker) == 1 ? true : false
        updateDatetime = try container.decodeIfPresent(String.self, forKey: .updateDatetime)
        createDatetime = try container.decodeIfPresent(String.self, forKey: .createDatetime)
        importDatetime = try container.decode(String.self, forKey: .importDatetime)
        trendingDatetime = try container.decode(String.self, forKey: .trendingDatetime)
        images = try container.decode(GPHImages.self, forKey: .images)
        title = try container.decode(String.self, forKey: .title)
        score = try container.decode(Double.self, forKey: .score)
        caption = try container.decodeIfPresent(String.self, forKey: .caption)
       
    }
}
