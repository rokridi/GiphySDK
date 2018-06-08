//
//  GPHResponse.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 07/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHResponse: Decodable {
    
    struct Meta: Decodable {
        
        let status: Int
        let message: String
        let responseId: String
        
        enum CodingKeys: String, CodingKey {
            case status
            case message = "msg"
            case responseId = "response_id"
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            status = try container.decode(Int.self, forKey: .message)
            message = try container.decode(String.self, forKey: .status)
            responseId = try container.decode(String.self, forKey: .responseId)
        }
    }
    
    struct Pagination: Decodable {
        
        let totalCount: Int
        let count: Int
        let offset: Int
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"
            case count
            case offset
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            totalCount = try container.decode(Int.self, forKey: .totalCount)
            count = try container.decode(Int.self, forKey: .count)
            offset = try container.decode(Int.self, forKey: .offset)
        }
    }
    
    let gifs: [GPHGif]
    let meta: Meta
    let pagination: Pagination
    
    enum CodingKeys: String, CodingKey {
        case gifs = "data"
        case meta
        case pagination
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        gifs = try container.decode([GPHGif].self, forKey: .gifs)
        meta = try container.decode(Meta.self, forKey: .meta)
        pagination = try container.decode(Pagination.self, forKey: .pagination)
    }
}
