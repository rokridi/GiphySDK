//
//  GPHTypes.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 08/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

/// Represents media type
public enum GPHGifType: String, Decodable {
    
    /// Media is gif
    case gif
    
    /// Media is sticker
    case sticker
    
    /// unknown
    case unknown
}

/// Represents GIF rating
public enum GPHGifRating: String, Decodable {
    
    /// Rated Y
    case Y
    
    /// R
    case G
    
    /// Rated PG
    case PG
    
    /// Rated PG-13
    case PG13 = "PG-13"
    
    /// Rated R
    case R
    
    /// Unrated
    case unrated
}

/// Represents a Giphy media rendition
public enum GPHImageRendition: String {
    
    /// Height set to 200px. Good for mobile use.
    case fixedHeight = "fixed_height"
    
    /// Static preview image for fixed_height
    case fixedHeightStill = "fixed_height_still"
    
    /// Height set to 200px. Reduced to 6 frames to minimize file size to the lowest.
    /// Works well for unlimited scroll on mobile and as animated previews. See Giphy.com on mobile web as an example.
    case fixedHeightDownsampled = "fixed_height_downsampled"
    
    /// Width set to 200px. Good for mobile use.
    case fixedWidth = "fixed_width"
    
    /// Static preview image for fixed_width
    case fixedWidthStill = "fixed_width_still"
    
    /// Width set to 200px. Reduced to 6 frames. Works well for unlimited scroll on mobile and as animated previews.
    case fixedWidthDownsampled = "fixed_width_downsampled"
    
    /// Height set to 100px. Good for mobile keyboards.
    case fixedHeightSmall = "fixed_height_small"
    
    /// Static preview image for fixed_height_small
    case fixedHeightSmallStill = "fixed_height_small_still"
    
    /// Width set to 100px. Good for mobile keyboards.
    case fixedWidthSmall = "fixed_width_small"
    
    /// Static preview image for fixed_width_small
    case fixedWidthSmallStill = "fixed_width_small_still"
    
    /// File size under 50kb. Duration may be truncated to meet file size requirements. Good for thumbnails and previews.
    case preview
    
    /// File size under 200kb.
    case downsizedSmall = "downsized_small"
    
    /// File size under 2mb.
    case downsized
    
    /// File size under 5mb.
    case downsizedMedium = "downsized_medium"
    
    /// File size under 8mb.
    case downsizedLarge = "downsized_large"
    
    /// Static preview image for downsized.
    case downsizedStill = "downsized_still"
    
    /// Original file size and file dimensions. Good for desktop use.
    case original
    
    /// Preview image for original.
    case originalStill = "original_still"
    
    /// Duration set to loop for 15 seconds. Only recommended for this exact use case.
    case looping
}

/// Represents Giphy APIs Supported Languages
public enum GPHLanguage: String {
    /// We use Int, RawRepresentable to be able to bridge btw ObjC<>Swift without loosing String values.
    
    /// English (en
    case english = "en"
    
    /// Spanish (es)
    case spanish = "es"
    
    /// Portuguese (pt)
    case portuguese = "pt"
    
    /// Indonesian (id)
    case indonesian = "id"
    
    /// French (fr)
    case french = "fr"
    
    /// Arabic (ar)
    case arabic = "ar"
    
    /// Turkish (tr)
    case turkish = "tr"
    
    /// Thai (th)
    case thai = "th"
    
    /// Vietnamese (vi)
    case vietnamese = "vi"
    
    /// German (de)
    case german = "de"
    
    /// Italian (it)
    case italian = "it"
    
    /// Japanese (ja)
    case japanese = "ja"
    
    /// Chinese Simplified (zh-cn)
    case chineseSimplified = "zh-cn"
    
    /// Chinese Traditional (zh-tw)
    case chineseTraditional = "zh-tw"
    
    /// Russian (ru)
    case russian = "ru"
    
    /// Korean (ko)
    case korean = "ko"
    
    /// Polish (pl)
    case polish = "pl"
    
    /// Dutch (nl)
    case dutch = "nl"
    
    /// Romanian (ro)
    case romanian = "ro"
    
    /// Hungarian (hu)
    case hungarian = "hu"
    
    /// Swedish (sv)
    case swedish = "sv"
    
    /// Czech (cs)
    case czech = "cs"
    
    /// Hindi (hi)
    case hindi = "hi"
    
    /// Bengali (bn)
    case bengali = "bn"
    
    /// Danish (da)
    case danish = "da"
    
    /// Farsi (fa)
    case farsi = "fa"
    
    /// Filipino (tl)
    case filipino = "tl"
    
    /// Finnish (fi)
    case finnish = "fi"
    
    /// Hebrew (iw)
    case hebrew = "iw"
    
    /// Malay (ms)
    case malay = "ms"
    
    /// Norwegian (no)
    case norwegian = "no"
    
    /// Ukrainian (uk)
    case ukrainian = "uk"
}
