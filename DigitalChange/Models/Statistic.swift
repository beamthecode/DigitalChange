//
//  Statistic.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/21/24.
//

import Foundation


struct Statistic: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
    
}
