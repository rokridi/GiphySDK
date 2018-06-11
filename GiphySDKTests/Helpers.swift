//
//  Helpers.swift
//  GiphySDKTests
//
//  Created by Mohamed Aymen Landolsi on 11/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

class TestsHelper {
 
    func JSONFromFile(_ file: String) -> Data? {
        
        let bundle = Bundle(for: TestsHelper.self)
        let file = bundle.url(forResource: file, withExtension: "json")!
        
        do {
            return try Data(contentsOf: file)
            
        } catch {
            return nil
        }
    }
    
    func decodeFromJsonFile<T: Decodable>(_ file: String) -> T? {
        guard let data = JSONFromFile(file) else {
            return nil
        }
        let jsonDecoder = JSONDecoder()
        return try? jsonDecoder.decode(T.self, from: data)
    }
}
