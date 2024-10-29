//
//  UIApplication.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/21/24.
//

import Foundation
import SwiftUI


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
