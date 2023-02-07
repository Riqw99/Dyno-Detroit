////
////  sample.swift
////  Dyno
////
////  Created by Tariq Williams on 5/11/22.
////
//
//
////  ProfileList.swift
////  Dyno
////
////  Created by Tariq Williams on 5/9/22.
//
//
//import SwiftUI
//
//struct ProfileList: View {
//    @State private var cards: [Card] = Card.data
//
//    var body: some View {
//        NavigationView {
//
//
//            VStack {
//
//                HStack(spacing: 0) {
//                    Button(action: {}) {
//
//                        Image("dyno")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(height: 45)
//                            .offset(x: 16)
//                        Button(action: {}) {
//                        Image(systemName: "bell")
//                            .offset(x: 130)
//                        }
//                    }.accentColor(.purple)
//                }.font(.system(size: 26))
//                    .padding(.horizontal, 1)
//
//
//                List(cards) { card in
//                    NavigationLink(destination: ChatView()) {
//                        ContactRow(card: card)
//
//
//                    }
//                }
//            }.padding(.horizontal, -20)
//            .refreshable {
//                print("")
//            }
//
//            .navigationBarTitle("fsfs")
//            .navigationBarHidden(true)
//
//        }
//    }
//
//    struct ProfileList_Previews: PreviewProvider {
//        static var previews: some View {
//            ProfileList()
//        }
//    }
//}
//
//struct ContactRow: View {
//    var card: Card
//
//    var body: some View {
//        HStack {
//            Image(card.imageName)
//                .resizable()
//                .scaledToFit()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 60, height: 60)
//                .clipped()
//                .cornerRadius(50)
//
//            VStack(alignment: .leading) {
//                Text(card.name)
//                    .font(.system(size: 21, weight: .medium, design: .default))
//                Text(card.message)
//
//            }
//        }
//    }
//}
