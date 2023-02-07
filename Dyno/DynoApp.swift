//
//  DynoApp.swift
//  Dyno
//
//  Created by Tariq Williams on 4/4/22.
//

import SwiftUI

@main
struct DynoApp: App {
    var body: some Scene {
        WindowGroup {
//            OnboardingView()
            ContentView(card: Card.data[0])
            
        }
    }
}
