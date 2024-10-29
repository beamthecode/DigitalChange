//
//  Color.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/20/24.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchColorTheme()
}


struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let secondaryText = Color("SecondaryTextColor")
    let greenDC = Color("GreenDCColor")
    let redDC = Color("RedDCColor")
}

struct LaunchColorTheme {
    let launchAccent = Color("LaunchAccentColor")
    let launchBackground = Color("LaunchBackgroundColor")
}
