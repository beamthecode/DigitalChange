//
//  ProfileView.swift
//  DigitalChange
//
//  Created by Brent Beamer on 8/6/24.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject private var viewModel: HomeViewModel
    
   
    @State private var showPortfolio: Bool = true
    @State private var rotateLogo = false
    
    
    var body: some View {
        NavigationStack {
            
           //header
            
            VStack {
                
                Image("LogoCrop")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.vertical)
               
                Text("Digital Change")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(Color.theme.accent)
                    .padding()
                
                HStack(spacing: 12) {
                    Text("Powered by ")
                        .font(.headline)
                        .bold()
                        .foregroundStyle(Color.theme.secondaryText)
                        
                    
                    Image("CoinGeckoLogo")
                        .resizable()
                        .frame(width: 150, height: 50)
                        
                }
                .padding(.vertical)
                .rotation3DEffect(
                    .degrees(rotateLogo ? 360 : 0),
                    axis: (x: 0, y: 1, z: 0)
                )
                .animation(.easeInOut(duration: 4.0), value: rotateLogo)
           
                VStack {
                    Spacer()
                    Text("Market & Portfolio Overview 💰")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color.theme.accent)
                        .padding(.vertical)
                    
                    HomeStatsView(showPortfolio: $showPortfolio)
                        .padding(.vertical)
                    
                    Spacer()
                    
                }
            }
            .navigationTitle("Profile")
            .onAppear {
                rotateLogo.toggle()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProfileView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}

/*
extension ProfileView {
    var header: some View {
        HStack() {
            Spacer()
            CircleButtonView(icon: "pencil")
                .onTapGesture {
                    showProfileSettingsView.toggle()
                }
        }
    }
    
}
*/
