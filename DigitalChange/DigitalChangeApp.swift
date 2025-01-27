//
//  DigitalChangeApp.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/20/24.
//

import SwiftUI

@main
struct DigitalChangeApp: App {
    
    @StateObject private var viewModel = HomeViewModel()
    @State private var showLaunchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationStack {
                     HomeView()
                        .navigationBarHidden(true)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(viewModel)
                   
                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}


