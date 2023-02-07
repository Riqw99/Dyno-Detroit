
//  ProfileList.swift
//  Dyno
//
//  Created by Tariq Williams on 5/9/22.


import SwiftUI

struct ProfileList: View {
    @State private var cards: [Card] = Card.data
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 0) {
                        Button(action: {}) {
                            Image("p0")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(50)
                                .padding(5)
                        }
                        Button(action: {}) {
                            Image("p1")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(50)
                                .padding(5)
                        }
                        Button(action: {}) {
                            Image("p2")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(50)
                                .padding(5)
                        }
                        Button(action: {}) {
                            Image("p3")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(50)
                                .padding(5)
                        }
                        Image("p4")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(50)
                            .padding(5)
                        Button(action: {}) {
                            Image("p5")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(50)
                                .padding(5)
                        }
                        Button(action: {}) {
                            Image("p6")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(50)
                                .padding(5)
                        }
                        Button(action: {}) {
                            Image("p7")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(50)
                                .padding(5)
                        }
                        //                   // Image("p8")
                        //                        .resizable()
                        //                        .scaledToFit()
                        //                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipped()
                        .cornerRadius(50)
                        .padding(5)
                        Button(action: {}) {
                            Image("p9")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(50)
                                .padding(5)
                            
                        }
                    }
                }
                List(cards) { card in
                    NavigationLink(destination: ChatView(card: card)) {
                        ContactRow(card: card)
                    }
                }
            }.padding(.horizontal, -20)
                .refreshable {
                    print("")
                }
            
                .navigationBarTitle("Matches 🤘")
            // .navigationBarHidden(true)
            
        }
        
    }
    
    struct ProfileList_Previews: PreviewProvider {
        static var previews: some View {
            ProfileList()
        }
    }
}

struct ContactRow: View {
    var card: Card
    
    var body: some View {
        HStack {
            Image(card.imageName)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            
            VStack(alignment: .leading) {
                Text(card.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(card.message)
            }
        }
    }
}
