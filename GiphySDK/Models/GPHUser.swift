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
        case userName = "user_name"
        case displayName = "display_name"
        case twitter
        case isVerified = "is_sticker"
    }
    
    let avatarUrl: String
    let bannerUrl: String
    let profileUrl: String
    let userName: String
    let displayName: String
    let twitterUserName: String
    let isVerified: Bool
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        avatarUrl = try container.decode(String.self, forKey: .avatarUrl)
        bannerUrl = try container.decode(String.self, forKey: .bannerUrl)
        profileUrl = try container.decode(String.self, forKey: .profileUrl)
        userName = try container.decode(String.self, forKey: .userName)
        displayName = try container.decode(String.self, forKey: .displayName)
        twitterUserName = try container.decode(String.self, forKey: .twitter)
        let isVerified = try container.decode(Int.self, forKey: .isVerified)
        self.isVerified = isVerified == 1 ? true : false
    }
}
