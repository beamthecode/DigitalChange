//
//  CircleButtonView.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/20/24.
//

import SwiftUI

struct CircleButtonView: View {
    
    let icon: String 
    
    var body: some View {
        Image(systemName: icon)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(Color.theme.background)
            )
            .shadow(color: Color.theme.accent.opacity(0.25),
                    radius: 10, x: 0, y: 0)
            .padding()
    }
}

#Preview {
    Group {
        CircleButtonView(icon: "info")
            .previewLayout(.sizeThatFits)
        
        CircleButtonView(icon: "plus")
            .previewLayout(.sizeThatFits)
            .colorScheme(.dark)
    }
}
