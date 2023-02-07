//
//  CardView.swift
//  Dyno
//
//  Created by Tariq Williams on 4/4/22.
//

import Foundation
import UIKit

struct Card: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let age: Int
    let bio: String
    let message: String
    let miles: String
    let firstMessage: String
    
    
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    
    var degree: Double = 0.0
    
    static var data: [Card] {
        [
            Card(name: "Nia", imageName: "p0", age: 21, bio: "just looking for friends 😉" , message: "heyyy how are you?? 😇", miles: "17 Miles", firstMessage: "do you like to climb? 😇"),
            Card(name: "Sydney", imageName: "p1", age: 21, bio: "don't really know what to put here", message: "please get me off this app lol", miles: "9 Miles", firstMessage: "hey how tall are you?"),
            Card(name: "Tricia", imageName: "p2", age: 27, bio: "...", message: "Have you seen the new stranger things season?", miles: "24 Miles", firstMessage: "I just watched it and it was crazy lol"),
            Card(name: "Sadie", imageName: "p3", age: 25, bio: "date for a wedding??", message: "yes I love being outdoors as well", miles: "32 Miles", firstMessage: "especially hiking"),
            Card(name: "Alondra", imageName: "p4", age: 22, bio: "follow me on IG, tag in bio", message: "I'm a gym rat 😩", miles: "44 Miles", firstMessage: "come workout with me??"),
            Card(name: "Penny", imageName: "p5", age: 21, bio: "hi !", message: "do you like to travel?? ✈️", miles: "2 Miles", firstMessage: "what's your ideal destination?"),
            Card(name: "Ian", imageName: "p9", age: 30, bio: "sassy + quirky = me", message: "you seem interesting", miles: "27 Miles", firstMessage: "do you like movies?"),
            Card(name: "Megan", imageName: "p6", age: 29, bio: "boys over 6ft wya???", message: "6'3 I see 😎", miles: "30 Miles", firstMessage: "you passed my 6ft check lol"),
            Card(name: "Nola", imageName: "p7", age: 24, bio: "give me your best pick up line", message: "tattoos? 👀", miles: "14 Miles", firstMessage: "they are my favorite"),
            Card(name: "Annabelle", imageName: "p8", age: 26, bio: "win me over by making me laugh :)" , message: "I'm good! What brings you on here?", miles: "6 Miles", firstMessage: "I'm looking for a relationship, nothing casual.")
        ]
    }
}
