//
//  ContentView.swift
//  VaporEntryApp
//
//  Created by 어재선 on 7/18/24.
//

import SwiftUI

struct EntryView: View {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        
        ZStack {
            Color(.colorBackground).ignoresSafeArea()
            VStack(alignment: .center) {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                Text("Create stunning social")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                Text("graphics in seconds")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                Button {
                    
                } label: {
                    Text("Continue with Goggle")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        
                }
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .buttonStyle(.borderedProminent)
                .tint(.buttonBackground)
                Button {
                    
                } label: {
                    Text("Continue with FaceBook")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                }
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .buttonStyle(.borderedProminent)
                .tint(.buttonBackground)
                Button {
                    
                } label: {
                    Text("Continue with Apple")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                }
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .buttonStyle(.borderedProminent)
                .tint(.buttonBackground)
                
                Button {
                    
                } label: {
                    Text("Sign up for free")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                }
                Button{
                    
                } label: {
                    Text("Haven an account already? Log in.")
                        .font(.system(size: 14))
                        .foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255))

                }
                Spacer()
            }
            .foregroundStyle(.white)
            .navigationTitle("Entry")
            .navigationBarTitleDisplayMode(.inline)
        .padding()
        }
    }
}

#Preview {
    NavigationStack{
        EntryView()
    }
}
