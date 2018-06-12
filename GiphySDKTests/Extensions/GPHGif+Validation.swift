//
//  GPHGif+Validation.swift
//  GiphySDKTests
//
//  Created by Mohamed Aymen Landolsi on 12/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import Nimble
@testable import GiphySDK

extension GPHGif {
    
    func validate(json: [String: Any]) {
        
        let type = GPHGifType(rawValue: json["type"] as! String)
        expect(self.type).to(equal(type))
        
        let id = json["id"] as! String
        expect(self.id).to(equal(id))
        
        let slug = json["slug"] as! String
        expect(self.slug).to(equal(slug))
        
        let url = json["url"] as! String
        expect(self.url).to(equal(url))
        
        let bitlyGifUrl = json["bitly_gif_url"] as! String
        expect(self.bitlyGifUrl).to(equal(bitlyGifUrl))
        
        let bitlyUrl = json["bitly_url"] as! String
        expect(self.bitlyUrl).to(equal(bitlyUrl))
        
        let embedUrl = json["embed_url"] as! String
        expect(self.embedUrl).to(equal(embedUrl))
        
        let userName = json["username"] as! String
        expect(self.userName).to(equal(userName))
        
        let source = json["source"] as! String
        expect(self.source).to(equal(source))
        
        let rating = GPHGifRating(rawValue: json["rating"] as! String)
        expect(self.rating).to(equal(rating))
        
        let contentUrl = json["content_url"] as! String
        expect(self.contentUrl).to(equal(contentUrl))
        
        let sourceTld = json["source_tld"] as! String
        expect(self.sourceTld).to(equal(sourceTld))
        
        let sourcePostUrl = json["source_post_url"] as! String
        expect(self.sourcePostUrl).to(equal(sourcePostUrl))
        
        let isSticker = (json["is_sticker"] as! Int) == 1 ? true : false
        expect(self.isSticker).to(equal(isSticker))
        
        let importDatetime = json["import_datetime"] as! String
        expect(self.importDatetime).to(equal(importDatetime))
        
        let trendingDatetime = json["trending_datetime"] as! String
        expect(self.trendingDatetime).to(equal(trendingDatetime))
        
        let images = json["images"] as! [String: Any]
        self.images.validate(json: images)
    }
}
