//
//  Helpers.swift
//  GiphySDKTests
//
//  Created by Mohamed Aymen Landolsi on 11/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

class TestsHelper {
    
    static func JSONDataFrom(file: String) throws -> Data {
        
        let bundle = Bundle(for: TestsHelper.self)
        let file = bundle.url(forResource: file, withExtension: "json")!
        
        return try Data(contentsOf: file)
    }
    
    static func dicionaryFrom(file: String) throws -> [String: Any] {
        
        let bundle = Bundle(for: TestsHelper.self)
        let file = bundle.url(forResource: file, withExtension: "json")!
        
        let data = try Data(contentsOf: file)
        return try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
    }
    
    static func modelFrom<T>(file: String, type: T.Type) throws -> T where T : Decodable {
        
        do {
            let data = try JSONDataFrom(file: file)
            let jsonDecoder = JSONDecoder()
            return try jsonDecoder.decode(T.self, from: data)
        }
    }
}
