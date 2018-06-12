//
//  GPHUser+Validation.swift
//  GiphySDKTests
//
//  Created by Mohamed Aymen Landolsi on 12/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import Nimble
@testable import GiphySDK

extension GPHUser {
    func validate(json: [String: Any]) {
        
        let avatarUrl =  json["avatar_url"] as! String
        let bannerUrl = json["banner_url"] as! String
        let profileUrl = json["profile_url"] as! String
        let userName = json["username"] as! String
        let displayName = json["display_name"] as! String
        let twitter = json["twitter"] as? String
        
        expect(self.avatarUrl).to(equal(avatarUrl))
        expect(self.bannerUrl).to(equal(bannerUrl))
        expect(self.profileUrl).to(equal(profileUrl))
        expect(self.userName).to(equal(userName))
        expect(self.displayName).to(equal(displayName))
        
        if self.twitter == nil {
            expect(twitter).to(beNil())
        } else {
            expect(self.twitter).to(equal(twitter))
        }
    }
}
