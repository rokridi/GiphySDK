//
//  User.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 08/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHUser: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case bannerUrl = "banner_url"
        case profileUrl = "profile_url"
        case userName = "username"
        case displayName = "display_name"
        case twitter
    }
    
    let avatarUrl: String
    let bannerUrl: String
    let profileUrl: String
    let userName: String
    let displayName: String
    let twitter: String?
    
    public init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        avatarUrl = try container.decode(String.self, forKey: .avatarUrl)
        bannerUrl = try container.decode(String.self, forKey: .bannerUrl)
        profileUrl = try container.decode(String.self, forKey: .profileUrl)
        userName = try container.decode(String.self, forKey: .userName)
        displayName = try container.decode(String.self, forKey: .displayName)
        twitter = try container.decodeIfPresent(String.self, forKey: .twitter)
    }
}
