//
//  MessagesView.swift
//  Dyno
//
//  Created by Tariq Williams on 4/6/22.
//

import SwiftUI

struct MessagesView: View {
    
    @State private var showMessageScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                
               HStack(spacing: 16) {

               // HStack() {
                    Image(systemName: "person.fill")
                        .font(.system(size: 34, weight: .heavy))
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Tyler")
                            .font(.system(size: 24, weight: .bold))
                        HStack {
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 14, height: 14)
                        
                        Text("online")
                            .font(.system(size: 12))
                            .foregroundColor(Color(.lightGray))
                        }
                        
                    }
                    Spacer()
                    Image(systemName: "gear")
                }
                .padding()
                
                //custom nav
                
                
                
                ScrollView {
                    ForEach(0..<10, id: \.self) { num in
                        VStack {
                            HStack(spacing: 20) {
                           // HStack() {
                                Image("p0")
                                
                                  
                                    .resizable()
                                    .scaledToFit()
                                    .overlay(Circle().stroke(Color.black, lineWidth: 5))

                                    .clipShape(Circle())
                                    .aspectRatio(contentMode: .fit)
                                    .font(.system(size: 32))
                                    .padding()
                                    
                                
                                VStack(alignment: .leading) {
                                    Text("Nia")
                                        .font(.system(size: 16, weight: .bold))
                                    Text("xD that's really cool!")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color(.lightGray))
                                }
                                
                                Spacer()
                                
                                Text("19d")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            Divider()
                                .padding(.vertical, 1)
                        }.padding(.horizontal)
                        
                        
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}

