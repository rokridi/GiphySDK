//
//  GPHGif.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 07/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHGif: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case type
        case id
        case slug
        case url
        case bitlyGifUrl = "bitly_gif_url"
        case bitlyUrl = "bitly_url"
        case embedUrl = "embed_url"
        case userName
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
    
    let type: GPHGifType
    let id: String
    let slug: String
    let url: String
    let bitlyGifUrl: String
    let bitlyUrl: String
    let embedUrl: String
    let userName: String
    let source: String
    let rating: GPHGifRating
    let contentUrl: String?
    let user: GPHUser?
    let sourceTld: String
    let sourcePostUrl: String
    let updateDatetime: Date
    let createDatetime: Date
    let importDatetime: Date
    let trendingDatetime: Date
    let images: GPHImages
    let title: String
    let score: Int
    let caption: String
    
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
        
        let rating = try container.decode(String.self, forKey: .rating)
        self.rating = GPHGifRating(rawValue: rating) ?? .unrated
        
        contentUrl = try container.decodeIfPresent(String.self, forKey: .contentUrl)
        user = try container.decode(GPHUser.self, forKey: .user)
        sourceTld = try container.decode(String.self, forKey: .sourceTld)
        sourcePostUrl = try container.decode(String.self, forKey: .sourcePostUrl)
        
        let updateDatetime = try container.decode(String.self, forKey: .updateDatetime).toTimeInterval()!
        self.updateDatetime = Date(timeIntervalSince1970: updateDatetime)
        
        let createDatetime = try container.decode(String.self, forKey: .createDatetime).toTimeInterval()!
        self.createDatetime = Date(timeIntervalSince1970: createDatetime)
        
        let importDatetime = try container.decode(String.self, forKey: .importDatetime).toTimeInterval()!
        self.importDatetime = Date(timeIntervalSince1970: importDatetime)
        
        let trendingDatetime = try container.decode(String.self, forKey: .trendingDatetime).toTimeInterval()!
        self.trendingDatetime = Date(timeIntervalSince1970: trendingDatetime)
        
        images = try container.decode(GPHImages.self, forKey: .images)
        title = try container.decode(String.self, forKey: .title)
        score = try container.decode(Int.self, forKey: .score)
        caption = try container.decode(String.self, forKey: .caption)
    }
}
