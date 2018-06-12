//
//  GPHImage+Validation.swift
//  GiphySDKTests
//
//  Created by Mohamed Aymen Landolsi on 12/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import Nimble
@testable import GiphySDK

extension GPHImage {
    func validate(json: [String: Any], rendition: GPHImageRendition) {
        
        let url = json["url"] as? String
        let width = Int(json["width"] as? String ?? "") ?? 0
        let height = Int(json["height"] as? String ?? "") ?? 0
        let size = Int(json["size"] as? String ?? "") ?? 0
        let frames = Int(json["frames"] as? String ?? "") ?? 0
        let mp4Url = json["mp4"] as? String
        let mp4Size = Int(json["mp4_size"] as? String ?? "") ?? 0
        let webpUrl = json["webp"] as? String
        let webpSize = Int(json["webp_size"] as? String ?? "") ?? 0
        
        if self.url == nil {
            expect(url).to(beNil())
        } else {
            expect(self.url).to(equal(url))
        }
        
        expect(self.width).to(equal(width))
        expect(self.height).to(equal(height))
        expect(self.size).to(equal(size))
        expect(self.frames).to(equal(frames))
        
        if self.mp4Url == nil {
            expect(mp4Url).to(beNil())
        } else {
            expect(self.mp4Url).to(equal(mp4Url))
        }
        
        expect(self.mp4Size).to(equal(mp4Size))
        
        if self.webpUrl == nil {
            expect(webpUrl).to(beNil())
        } else {
            expect(self.webpUrl).to(equal(webpUrl))
        }
        
        expect(self.webpSize).to(equal(webpSize))
    }
}
