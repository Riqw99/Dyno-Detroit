//
//  ProfilePage.swift
//  Dyno
//
//  Created by Tariq Williams on 5/26/22.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack {
            Image("p0")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .clipped()
                .cornerRadius(50)
                .padding(5)
            
            Text("Tariq Williams")
                .font(.title)
                .bold()
            Spacer().frame(height: 30)
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Image(systemName: "envelope")
                    Text("emailexample@gmail.com")
                    
                }
                
                HStack {
                    Image(systemName: "phone")
                    Text("517-223-333")
                    
                }
                
                HStack {
                    Image(systemName: "globe.americas")
                    Text("rme.org")
                }
            }
            VStack {
                
                Text("Rewards")
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [.white, .purple]), startPoint: .top, endPoint: .bottom)
                    )
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding()
                
            }
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
