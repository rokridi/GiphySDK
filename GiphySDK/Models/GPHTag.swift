//
//  GPHTag.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 11/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHTag: Decodable {
    
    private enum CodingKeys: String, CodingKey {
        case tag
        case rank
    }
    
    public let tag: String
    public let rank: Int
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        tag = try container.decode(String.self, forKey: .tag)
        rank = try container.decode(Int.self, forKey: .rank)
    }
}
