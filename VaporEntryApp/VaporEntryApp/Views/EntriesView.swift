//
//  EntriesView.swift
//  VaporEntryApp
//
//  Created by 어재선 on 7/18/24.
//

import SwiftUI

struct EntriesView: View {
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().tintColor = .white
    }
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack {
            Color(.colorBackground).ignoresSafeArea()
           
            ScrollView {
                ForEach(0..<20) { num in
                    VStack{
                        HStack{
                            Text("\(num): Jan 25, 2023")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text("I have started a new project at work")
                                .font(.system(size: 14))
                                .foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255))
                                .lineLimit(1)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                        
                        
                    }
                    
                }
                .padding()
            }
        }
        .foregroundStyle(.white)
        .navigationTitle("Entries")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: AddEntryView()) {
                    Image(systemName: "plus")
                        .tint(.white)
                }
                
            }
            ToolbarItem(placement: .topBarLeading) {
                Button{
                    dismiss()
                } label: {
                    Text("Log Out")
                        .foregroundStyle(.white)
                        .bold()
                }
            }
            
        }
        
    }
}

#Preview {
    NavigationStack {
        EntriesView()
    }
}
