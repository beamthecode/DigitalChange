//
//  AppSettingsView.swift
//  DigitalChange
//
//  Created by Brent Beamer on 7/27/24.
//

import SwiftUI

struct AppSettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let projectURL = URL(string: "https://www.google.com")!
    let portfolioURL = URL(string: "https://www.brentbeamer.com/iosdeveloper-portfolio")!
    let githubURL = URL(string: "https://github.com/beamthecode")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let sarnoURL = URL(string: "https://www.nicksarno.com")!

    
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                // background layer
                Color.theme.background.ignoresSafeArea()
                
                // content layer
                List {
                    appSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    aboutMeSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    sarnoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                 
               
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("App Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

#Preview {
    AppSettingsView()
}

extension AppSettingsView {
    private var appSection: some View {
        Section(header: Text("Digital Change")) {
            VStack(alignment: .leading) {
                Image("Logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app showcases a working knowledge of Combine, API’s, CoreData, & App Storage. The app architecture is MVVM. The app utilizes an API to pull crypto market information from the CoinGecko live market database. Users can add coins to their portfolio. This information is stored in CoreData & App Storage, which allows for persistence between restarts of the app.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit the project source code →", destination: projectURL)
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
    
    private var aboutMeSection: some View {
        Section(header: Text("About Me")) {
            VStack(alignment: .leading) {
                Image("brent")
                    .resizable()
                    .frame(width: 100, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("My name is Brent Beamer. I am an iOS Developer, currently building a portfolio of apps that showcase my knowledge of Database Back End, Core Data, Core Animation, SDK’s, UIKit, MVVM, Combine,  API’s, Concurrency, & UI Design. Check out my portfolio for more information about my interests, goals, and projects!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit my GitHub →", destination: githubURL)
            Link("Visit my Portfolio →", destination: portfolioURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("Coin Gecko")) {
            VStack(alignment: .leading) {
                Image("CoinGeckoLogo")
                    .resizable()
                    .frame(width: 300, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("TM (CEO) and Bobby (COO) founded CoinGecko on April 8, 2014, with the mission to democratize access to cryptocurrency data and empower users with actionable insights. Since then, we have equipped millions of users globally with the tools and knowledge to succeed in the world of cryptocurrency. We provide users with a comprehensive 360-degree view of the market and deliver accurate, reliable and in-depth information from thousands of data points – including price, trading volume, market capitalization, contract addresses, community statistics and more.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit Coin Gecko →", destination: coinGeckoURL)
        }
    }
    
    private var sarnoSection: some View {
        Section(header: Text("Nick Sarno")) {
            VStack(alignment: .leading) {
                Image("Sarno")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Nick Sarno is an iOS Developer and YouTuber. He creates SwiftUI instructional videos. This project was inspired by him. He currently has 51.2k subscribers on YouTube.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit Nick Sarno →", destination: sarnoURL)
        }
    }
}
