//
//  GPHImage.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 08/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHImage: Decodable {
    
    private enum CodingKeys: String, CodingKey {
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
    
    public var url: String?
    public var width: Int = 0
    public var height: Int = 0
    public var size: Int = 0
    public var frames: Int = 0
    public var mp4Url: String?
    public var mp4Size: Int = 0
    public var webpUrl: String?
    public var webpSize: Int = 0
    public var rendition: GPHImageRendition {
        return _rendition
    }
    
    internal var _rendition: GPHImageRendition = .original
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        url = try container.decodeIfPresent(String.self, forKey: .url)
        
        let width = try container.decodeIfPresent(String.self, forKey: .width)
        self.width = Int(width ?? "") ?? 0
        
        let height = try container.decodeIfPresent(String.self, forKey: .height)
        self.height = Int(height ?? "") ?? 0
        
        let size = try container.decodeIfPresent(String.self, forKey: .size)
        self.size = Int(size ?? "") ?? 0
        
        let frames = try container.decodeIfPresent(String.self, forKey: .frames)
        self.frames = Int(frames ?? "") ?? 0
        
        mp4Url = try container.decodeIfPresent(String.self, forKey: .mp4)
        
        let mp4Size = try container.decodeIfPresent(String.self, forKey: .mp4Size)
        self.mp4Size = Int(mp4Size ?? "") ?? 0
        
        webpUrl = try container.decodeIfPresent(String.self, forKey: .webp)
        
        let webpSize = try container.decodeIfPresent(String.self, forKey: .webpSize)
        self.webpSize = Int(webpSize ?? "") ?? 0
    }
}
