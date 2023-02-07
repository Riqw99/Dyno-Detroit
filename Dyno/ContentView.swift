//
//  ContentView.swift
//  Dyno
//
//  Created by Tariq Williams on 4/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOnboardingShowing = true
    
    
    let card: Card
    var body: some View {
        
        
        if isOnboardingShowing {
            OnboardingView(isOnboardingDisplayed: $isOnboardingShowing)
        } else {
            TabView {
                Page1()
                    .tabItem {
                        
                        
                        
                        Image(systemName: "person.2.wave.2")
                        Text("Climbers")
                        
                        
                    }
                DynoWebsite()
                    .tabItem {
                        Image(systemName: "folder.badge.plus")
                        Text("Events")
                        
                        
                    }
                ProfileList()
                    .tabItem {
                        Image(systemName: "message.and.waveform")
                        Text("Messages")
                    }
            }.accentColor(Color.purple)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(card: Card.data[0])
    }
}
