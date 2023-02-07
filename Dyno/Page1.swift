//
//  Page1.swift
//  Dyno
//
//  Created by Tariq Williams on 4/4/22.
//

import SwiftUI

struct Page1: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                HStack(spacing: 0) {
                    Button(action: {}) {
                        Image("dyno")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 45)
                    }
                }
                
                ZStack {
                    
                    ForEach(Card.data.reversed()) { card in
                        CardNew(card: card)
                            .padding(8)
                    }
                }.navigationBarHidden(true)
                
                
            }.zIndex(1.0)
            //bottom
            HStack(spacing: 0) {
                Button(action: {}) {
                    Image("")
                    Button(action: {}) {
                        Image("")
                        Button(action: {}) {
                            Image("")
                            Button(action: {}) {
                                Image("")
                                Button(action: {}) {
                                    Image("")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}


struct CardNew: View {
    @State var card: Card
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)])
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
            
            
            Image(card.imageName)
                .resizable()
            
            
            VStack {
                Spacer()
                VStack(alignment: .leading) {
                    HStack {
                        Text(card.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(String(card.age))
                            .font(.title)
                        
                        Spacer()
                        
                        
                        Text(card.miles)
                        
                            .background(Color.black.opacity(0.1))
                            .cornerRadius(10)
                    }
                    Text(card.bio)
                }
            } .padding()
                .foregroundColor(.white)
            
            HStack {
                Image("yes")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .opacity(Double(card.x/10 - 1))
                Spacer()
                Image("nope")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .opacity(Double(card.x/10 * -1 - 1))
            }
            
        }
        .cornerRadius(8)
        // Card Model
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
        
        // Gesture !
        .gesture (
            DragGesture()
            
                .onChanged { value in
                    withAnimation(.default) {
                        card.x = value.translation.width
                        card.y = value.translation.height
                        card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                        
                    }
                }
                .onEnded { value in
                    animation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0), value: 1)
                    //                    withAnimation(interpolatingSpring(mass: 2, stiffness: 2, damping: 2, initialVelocity: 2))                    // animation for when user stops dragging??
                    //                    withAnimation(interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0))
                    switch value.translation.width {
                    case 0...100:
                        card.x = 0; card.degree = 0; card.y = 0
                    case let x where x > 100:
                        card.x = 500; card.y = 12
                    case (-100)...(-1):
                        card.x = 0; card.degree = 0; card.y = 0
                    case let x where x < -100:
                        card.x = -500; card.y = -12
                    default: card.x = 0; card.y = 0
                        
                    }
                }
        )
    }
}
