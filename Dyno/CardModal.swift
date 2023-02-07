//
//  CardModal.swift
//  Dyno
//
//  Created by Tariq Williams on 5/11/22.
//

import SwiftUI

struct CardModal: View {
    
    @State private var cards: [Card] = Card.data
    
    var body: some View {
        
        
        
        VStack {
            Image("p0")
                .resizable()
            
                .frame(width: 400, height: 400)
            // .edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("About Me")
                    .font(.title2)
                    .fontWeight(.thin)
                Text("sfssdcvscsdasvvdsavasdvsvdvdsvsdvdsavsdvsdvdsvdsvsdvsdvsdvsvsdvsvsvsdvsvddsvsdvsdvdsdvvdsvdsvdsvdsvsdvdvdsvsvsdvsvdvsdvsdvdsvsdjjjsf")
                    .padding(.all)
                Text("Passions")
                    .font(.title2)
                    .fontWeight(.thin)
                HStack {
                    Text("Outdoors")
                        .frame(width: 100, height: 30, alignment: .center)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    Text("Singing")
                        .frame(width: 100, height: 30, alignment: .center)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    Text("Hiking")
                        .frame(width: 100, height: 30, alignment: .center)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                VStack {
                    Text("Locations")
                        .font(.title2)
                        .fontWeight(.thin)
                    
                }
                .padding(.all)
            }
            // .edgesIgnoringSafeArea(.all)
            Spacer()
        }
    }
}

struct CardModal_Previews: PreviewProvider {
    static var previews: some View {
        CardModal()
    }
}


