//
//  GPHPagination+Validation.swift
//  GiphySDKTests
//
//  Created by Mohamed Aymen Landolsi on 12/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import Nimble
@testable import GiphySDK

extension GPHPagination {
    func validate(json: [String: Any]) {
        
        let totalCount = json["total_count"] as! Int
        let count = json["count"] as! Int
        let offset = json["offset"] as! Int
        
        expect(self.totalCount).to(equal(totalCount))
        expect(self.count).to(equal(count))
        expect(self.offset).to(equal(offset))
    }
}
