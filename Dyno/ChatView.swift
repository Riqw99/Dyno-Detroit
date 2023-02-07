//
//  ChatView.swift
//  Dyno
//
//  Created by Tariq Williams on 5/10/22.
//

import SwiftUI

struct ChatView: View {
    @State private var userTextField: String = ""
    @State private var isShowingPhotoPicker = false
    @State private var photoGallery = UIImage(systemName: "photo.on.rectangle")!
    
    var card: Card
    
    var body: some View {
        
        VStack {
            HStack {
                
                HStack(spacing: 0) {
                    Button(action: {}) {
                        Image(card.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipped()
                            .cornerRadius(50)
                    }
                }
            }
            
            Text(card.name)
                .font(.subheadline)
                .fontWeight(.light)
            
            
            ScrollView {
                HStack {
                    
                    Spacer()
                    VStack {
                        Text(card.message)
                            .padding()
                            .foregroundColor(.white)
                            .background(.purple.opacity(0.8))
                            .cornerRadius(10)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 10)
                        
                        Text(card.firstMessage)
                            .padding()
                            .foregroundColor(.white)
                            .background(.purple.opacity(0.8))
                            .cornerRadius(10)
                            .padding(.horizontal, 16)
                            .padding(.bottom, 10)
                    }
                    HStack {
                        Text("")
                    }
                }
            }
            HStack {
                
                Button(action: {}) {
                    
                    Image(uiImage: photoGallery)                    .font(.system(size: 26))
                        .foregroundColor(Color(.darkGray))
                        .padding(.horizontal, 1)
                        .onTapGesture {
                            isShowingPhotoPicker = true
                        }
                    
                }
                TextField("Type your message here", text: $userTextField)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        // sendMessage
                        
                    }
                Button {
                    // sendMessage
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
                .padding(.horizontal, 1)
                
                
            }.accentColor(Color.purple)
                .padding()
            
        }
        .refreshable {
            print("")
        }
        
        //.navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isShowingPhotoPicker, content: {
            PhotoPicker(photoGallery: $photoGallery)
        })
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        
        ChatView(card: Card.data[0])
    }
}
