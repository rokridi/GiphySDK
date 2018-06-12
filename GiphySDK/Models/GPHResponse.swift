//
//  GPHResponse.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 07/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHResponse<T: Decodable> {
    
    let gifs: [T]
    let meta: Meta
    let pagination: GPHPagination
    
    enum CodingKeys: String, CodingKey {
        case gifs = "data"
        case meta
        case pagination
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        gifs = try container.decode([T].self, forKey: .gifs)
        meta = try container.decode(Meta.self, forKey: .meta)
        pagination = try container.decode(GPHPagination.self, forKey: .pagination)
    }
}
