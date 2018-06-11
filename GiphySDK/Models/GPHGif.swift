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
    let url: URL
    let bitlyGifUrl: URL
    let bitlyUrl: URL
    let embedUrl: URL
    let userName: String
    let source: URL
    let rating: GPHGifRating
    let contentUrl: URL
    let user: GPHUser?
    let sourceTld: String
    let sourcePostUrl: URL
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
        url = try container.decode(URL.self, forKey: .url)
        bitlyGifUrl = try container.decode(URL.self, forKey: .bitlyGifUrl)
        bitlyUrl = try container.decode(URL.self, forKey: .bitlyUrl)
        embedUrl = try container.decode(URL.self, forKey: .embedUrl)
        userName = try container.decode(String.self, forKey: .userName)
        source = try container.decode(URL.self, forKey: .source)
        
        rating = try container.decode(GPHGifRating.self, forKey: .rating)
        
        contentUrl = try container.decode(URL.self, forKey: .contentUrl)
        user = try container.decode(GPHUser.self, forKey: .user)
        sourceTld = try container.decode(String.self, forKey: .sourceTld)
        sourcePostUrl = try container.decode(URL.self, forKey: .sourcePostUrl)
        
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
