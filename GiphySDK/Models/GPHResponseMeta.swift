//
//  GPHResponseMeta.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 11/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct Meta: Decodable {
    
    public let status: Int
    public let message: String
    public let responseId: String
    
    private enum CodingKeys: String, CodingKey {
        case status
        case message = "msg"
        case responseId = "response_id"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        status = try container.decode(Int.self, forKey: .message)
        message = try container.decode(String.self, forKey: .status)
        responseId = try container.decode(String.self, forKey: .responseId)
    }
}
