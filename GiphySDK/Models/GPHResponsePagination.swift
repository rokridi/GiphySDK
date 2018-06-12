//
//  GPHResponsePagination.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 11/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHPagination: Decodable {
    
    public let totalCount: Int
    public let count: Int
    public let offset: Int
    
    private enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case count
        case offset
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        totalCount = try container.decode(Int.self, forKey: .totalCount)
        count = try container.decode(Int.self, forKey: .count)
        offset = try container.decode(Int.self, forKey: .offset)
    }
}
