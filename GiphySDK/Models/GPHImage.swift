//
//  GPHImage.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 08/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHImage: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case url
        case width
        case height
        case size
        case frames
        case mp4
        case mp4Size = "mp4_size"
        case webp
        case webpSize = "webp_size"
    }
    
    public let url: String
    public let width: Int
    public let height: Int
    public let size: Int
    public let frames: Int
    public let mp4Url: String?
    public let mp4Size: Int
    public let webpUrl: String?
    public let webpSize: Int
    public var rendition: GPHImageRendition {
        return _rendition
    }
    
    internal var _rendition: GPHImageRendition = .original
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        url = try container.decode(String.self, forKey: .url)
        width = try container.decode(Int.self, forKey: .width)
        height = try container.decode(Int.self, forKey: .height)
        size = try container.decodeIfPresent(Int.self, forKey: .size) ?? 0
        frames = try container.decodeIfPresent(Int.self, forKey: .frames) ?? 0
        mp4Url = try container.decodeIfPresent(String.self, forKey: .mp4)
        mp4Size = try container.decodeIfPresent(Int.self, forKey: .mp4Size) ?? 0
        webpUrl = try container.decodeIfPresent(String.self, forKey: .webp)
        webpSize = try container.decodeIfPresent(Int.self, forKey: .webpSize) ?? 0
    }
}
