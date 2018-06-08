//
//  String+TimeInterval.swift
//  GiphySDK
//
//  Created by Mohamed Aymen Landolsi on 07/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

extension String {
    
    func toTimeInterval() -> TimeInterval? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        guard let date = dateFormatter.date(from: self) else {
            return nil
        }
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day, .hour], from: date)
        return calendar.date(from:components)?.timeIntervalSince1970
    }
}
