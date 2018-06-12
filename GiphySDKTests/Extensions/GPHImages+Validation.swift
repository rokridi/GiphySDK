//
//  GPHImages+Validation.swift
//  GiphySDKTests
//
//  Created by Mohamed Aymen Landolsi on 12/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import Nimble
@testable import GiphySDK

extension GPHImages {
    
    func validate(json: [String: Any]) {
        
        json.forEach { (key, value) in
            let imageJson = value as! [String: Any]
            let rendition = GPHImageRendition(rawValue: key)!
            
            switch rendition {
            case .fixedHeightStill:
                fixedHeightStill.validate(json: imageJson, rendition: rendition)
            case .originalStill:
                originalStill.validate(json: imageJson, rendition: rendition)
            case .fixedWidth:
                fixedWidth.validate(json: imageJson, rendition: rendition)
            case .fixedHeightSmallStill:
                fixedHeightSmallStill.validate(json: imageJson, rendition: rendition)
            case .fixedHeightDownsampled:
                fixedHeightDownsampled.validate(json: imageJson, rendition: rendition)
            case .preview:
                preview.validate(json: imageJson, rendition: rendition)
            case .fixedHeightSmall:
                fixedHeightSmall.validate(json: imageJson, rendition: rendition)
            case .downsizedStill:
                downsizedStill.validate(json: imageJson, rendition: rendition)
            case .downsized:
                downsized.validate(json: imageJson, rendition: rendition)
            case .downsizedLarge:
                downsizedLarge.validate(json: imageJson, rendition: rendition)
            case .fixedWidthSmallStill:
                fixedWidthSmallStill.validate(json: imageJson, rendition: rendition)
            case .previewWebp:
                previewWebp.validate(json: imageJson, rendition: rendition)
            case .fixedWidthStill:
                fixedWidthStill.validate(json: imageJson, rendition: rendition)
            case .fixedWidthSmall:
                fixedWidthSmall.validate(json: imageJson, rendition: rendition)
            case .downsizedSmall:
                downsizedSmall.validate(json: imageJson, rendition: rendition)
            case .fixedWidthDownsampled:
                fixedWidthDownsampled.validate(json: imageJson, rendition: rendition)
            case .downsizedMedium:
                downsizedMedium.validate(json: imageJson, rendition: rendition)
            case .original:
                original.validate(json: imageJson, rendition: rendition)
            case .fixedHeight:
                fixedHeight.validate(json: imageJson, rendition: rendition)
            case .looping:
                looping.validate(json: imageJson, rendition: rendition)
            case .originalMp4:
                originalMp4.validate(json: imageJson, rendition: rendition)
            case .previewGif:
                previewGif.validate(json: imageJson, rendition: rendition)
            case .still480w:
                still480w.validate(json: imageJson, rendition: rendition)
            }
        }
    }
}
