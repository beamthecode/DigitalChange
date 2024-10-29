//
//  String.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/27/24.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
