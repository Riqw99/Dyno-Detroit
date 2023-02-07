//
//  Onboarding.swift
//  Dyno
//
//  Created by Tariq Williams on 6/13/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var selectedTab = "One"
    @Binding var isOnboardingDisplayed: Bool
    
    var body: some View {
        
        
        
        TabView(selection: $selectedTab) {
            OnboardView(systemImageName: "person.2.crop.square.stack", title: "Discover", description: "Meet new and interesting climbers around you.", dismiss: "", purpleButton: "Continue", buttonAction: {selectedTab = "Two"})
            
                .tag("One")
            
            
            OnboardView(systemImageName: "hand.draw", title: "Choose", description: "Swipe right to like someone or swipe left to pass.", dismiss: "", purpleButton: "Continue", buttonAction: {selectedTab = "Three"})
            
                .tag("Two")
            
            OnboardView(systemImageName: "figure.stand.line.dotted.figure.stand", title: "It's a Match!", description: "If they also swipe right, then it's a match! Feel free to chat with each other immediately.", dismiss: "Done", purpleButton: "Start Swiping", buttonAction: {
                isOnboardingDisplayed = false
            })
            
            .tag("Three")
            
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isOnboardingDisplayed: .constant(true))
    }
}


struct OnboardView: View {
    let systemImageName: String
    let title: String
    let description: String
    let dismiss: String
    let purpleButton: String
    let buttonAction: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: systemImageName)
                .resizable()
                .renderingMode(.original)
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            
            Text(title)
                .font(.title).bold()
            
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
            
            
            Button(action: buttonAction) {
                
                Text(purpleButton)
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.horizontal, 40)
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(systemImageName: "scribble.variable", title: "Sketchpad", description: "Great for jotting down your ideas and brainstorming your next feature.", dismiss: "", purpleButton: "Continue", buttonAction: {})
    }
}
