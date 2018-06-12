//
//  GPHImages.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 08/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

public struct GPHImages: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case fixedHeight = "fixed_height"
        case fixedHeightStill = "fixed_height_still"
        case fixedHeightDownsampled = "fixed_height_downsampled"
        case fixedWidth = "fixed_width"
        case fixedWidthStill = "fixed_width_still"
        case fixedWidthDownsampled = "fixed_width_downsampled"
        case fixedHeightSmall = "fixed_height_small"
        case fixedHeightSmallStill = "fixed_height_small_still"
        case fixedWidthSmall = "fixed_width_small"
        case fixedWidthSmallStill = "fixed_width_small_still"
        case preview
        case downsizedSmall = "downsized_small"
        case downsized
        case downsizedMedium = "downsized_medium"
        case downsizedLarge = "downsized_large"
        case downsizedStill = "downsized_still"
        case original
        case originalStill = "original_still"
        case looping
        case originalMp4 = "original_mp4"
        case previewGif = "preview_gif"
        case previewWebp = "preview_webp"
        case still480w = "480w_still"
    }
    
    /// Height set to 200px. Good for mobile use.
    var fixedHeight: GPHImage
    
    /// Static preview image for fixed_height
    var fixedHeightStill: GPHImage
    
    /// Height set to 200px. Reduced to 6 frames to minimize file size to the lowest.
    /// Works well for unlimited scroll on mobile and as animated previews. See Giphy.com on mobile web as an example.
    var fixedHeightDownsampled: GPHImage
    
    /// Width set to 200px. Good for mobile use.
    var fixedWidth: GPHImage
    
    /// Static preview image for fixed_width
    var fixedWidthStill: GPHImage
    
    /// Width set to 200px. Reduced to 6 frames. Works well for unlimited scroll on mobile and as animated previews.
    var fixedWidthDownsampled: GPHImage
    
    /// Height set to 100px. Good for mobile keyboards.
    var fixedHeightSmall: GPHImage
    
    /// Static preview image for fixed_height_small
    var fixedHeightSmallStill: GPHImage
    
    /// Width set to 100px. Good for mobile keyboards.
    var fixedWidthSmall: GPHImage
    
    /// Static preview image for fixed_width_small
    var fixedWidthSmallStill: GPHImage
    
    /// File size under 50kb. Duration may be truncated to meet file size requirements. Good for thumbnails and previews.
    var preview: GPHImage
    
    /// File size under 200kb.
    var downsizedSmall: GPHImage
    
    /// File size under 2mb.
    var downsized: GPHImage
    
    /// File size under 5mb.
    var downsizedMedium: GPHImage
    
    /// File size under 8mb.
    var downsizedLarge: GPHImage
    
    /// Static preview image for downsized.
    var downsizedStill: GPHImage
    
    /// Original file size and file dimensions. Good for desktop use.
    var original: GPHImage
    
    /// Preview image for original.
    var originalStill: GPHImage
    
    /// Duration set to loop for 15 seconds. Only recommended for this exact use case.
    var looping: GPHImage
    
    var originalMp4: GPHImage
    var previewGif: GPHImage
    var previewWebp: GPHImage
    var still480w: GPHImage
    
    
    
    // MARK: Init
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        fixedHeight = try container.decode(GPHImage.self, forKey: .fixedHeight)
        fixedHeightStill = try container.decode(GPHImage.self, forKey: .fixedHeightStill)
        fixedHeightDownsampled = try container.decode(GPHImage.self, forKey: .fixedHeightDownsampled)
        fixedWidth = try container.decode(GPHImage.self, forKey: .fixedWidth)
        fixedWidthStill = try container.decode(GPHImage.self, forKey: .fixedWidthStill)
        fixedWidthDownsampled = try container.decode(GPHImage.self, forKey: .fixedWidthDownsampled)
        fixedHeightSmall = try container.decode(GPHImage.self, forKey: .fixedHeightSmall)
        fixedHeightSmallStill = try container.decode(GPHImage.self, forKey: .fixedHeightSmallStill)
        fixedWidthSmall = try container.decode(GPHImage.self, forKey: .fixedWidthSmall)
        fixedWidthSmallStill = try container.decode(GPHImage.self, forKey: .fixedWidthSmallStill)
        preview = try container.decode(GPHImage.self, forKey: .preview)
        downsizedSmall = try container.decode(GPHImage.self, forKey: .downsizedSmall)
        downsized = try container.decode(GPHImage.self, forKey: .downsized)
        downsizedMedium = try container.decode(GPHImage.self, forKey: .downsizedMedium)
        downsizedLarge = try container.decode(GPHImage.self, forKey: .downsizedLarge)
        downsizedStill = try container.decode(GPHImage.self, forKey: .downsizedStill)
        original = try container.decode(GPHImage.self, forKey: .original)
        originalStill = try container.decode(GPHImage.self, forKey: .originalStill)
        looping = try container.decode(GPHImage.self, forKey: .looping)
        originalMp4 = try container.decode(GPHImage.self, forKey: .originalMp4)
        previewGif = try container.decode(GPHImage.self, forKey: .previewGif)
        previewWebp = try container.decode(GPHImage.self, forKey: .previewWebp)
        still480w = try container.decode(GPHImage.self, forKey: .still480w)
        
        setRenditions()
    }
}

// MARK: Renditions

extension GPHImages {
    
    private mutating func setRenditions() {
        fixedHeight._rendition = .fixedHeight
        fixedHeightStill._rendition = .fixedHeightStill
        fixedHeightDownsampled._rendition = .fixedHeightDownsampled
        fixedWidth._rendition = .fixedWidth
        fixedWidthStill._rendition = .fixedWidthStill
        fixedWidthDownsampled._rendition = .fixedWidthDownsampled
        fixedHeightSmall._rendition = .fixedHeightSmall
        fixedHeightSmallStill._rendition = .fixedHeightSmallStill
        fixedWidthSmall._rendition = .fixedWidthSmall
        fixedWidthSmallStill._rendition = .fixedWidthSmallStill
        preview._rendition = .preview
        downsizedSmall._rendition = .downsizedSmall
        downsized._rendition = .downsized
        downsizedMedium._rendition = .downsizedMedium
        downsizedLarge._rendition = .downsizedLarge
        downsizedStill._rendition = .downsizedStill
        original._rendition = .original
        originalStill._rendition = .originalStill
        looping._rendition = .looping
        originalMp4._rendition = .originalMp4
        previewGif._rendition = .previewGif
        still480w._rendition = .still480w
    }
}
