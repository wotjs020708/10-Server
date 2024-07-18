//
//  AddEntryView.swift
//  VaporEntryApp
//
//  Created by 어재선 on 7/18/24.
//

import SwiftUI

struct AddEntryView: View {
    init() { 
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().topItem?.backBarButtonItem?.tintColor = .white
        
}
    @Environment(\.dismiss) private var dismiss
    @State private var title: String = ""
    @State private var description: String = ""
    var body: some View {
        ZStack{
            Color(.colorBackground).ignoresSafeArea()
            VStack(spacing: 30) {
                TextField("Title",text: $title,prompt: Text("Title").foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255)))
                    .padding()
                    .foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255))
                    .background(Color(red: 36/255, green: 54/255, blue: 71/255))
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .frame(maxWidth: .infinity)
        
                TextEditor(text: $description)
                    .padding()
                    .scrollContentBackground(.hidden)
                    .background(Color(red: 36/255, green: 54/255, blue: 71/255))
                    .foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255))
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                Button{
                    
                } label: {
                    Text("Submit")
                        .font(.system(size: 16))
                        .bold()
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .buttonStyle(.borderedProminent)
            

                Spacer()
            }.padding()
        }
        .navigationTitle("New entry")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .tint(.white)
                }
            }
        }
        
    }
}

#Preview {
    NavigationStack{
        AddEntryView()
    }
}
