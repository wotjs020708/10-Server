//
//  LoginView.swift
//  VaporEntryApp
//
//  Created by 어재선 on 7/18/24.
//

import SwiftUI


struct LoginView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var id: String = ""
    @State private var pw: String = ""
    
    var body: some View {
        ZStack{
            Color(.colorBackground).ignoresSafeArea()
            VStack(alignment: .center,spacing: 20){
                HStack{
                    Text("Log in to your account")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    
                }.frame(maxWidth: .infinity,alignment: .leading)
                TextField("username",text: $id,prompt: Text("username").foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255)))
                    .padding()
                    .foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255))
                    .background(Color(red: 36/255, green: 54/255, blue: 71/255))
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .frame(maxWidth: .infinity)
                TextField("Password",text: $pw,prompt: Text("Password").foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255)))
                    .padding()
                    .foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255))
                    .background(Color(red: 36/255, green: 54/255, blue: 71/255))
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .frame(maxWidth: .infinity)
                HStack{
                    Button{
                        
                    } label: {
                        Text("Forgot password?")
                            .font(.system(size: 14))
                            .foregroundStyle(Color(red: 148/255, green: 173/255, blue: 199/255))
                    }
                }.frame(maxWidth: .infinity,alignment: .leading)
                //                MARK: - 로그인 버튼
                NavigationLink(destination: EntriesView()){
                    
                    Text("Login")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                        .background(Color(.systemBlue))
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    
                    
                }
                //                Button{
                //
                //                } label: {
                //                    Text("Login")
                //                        .font(.system(size: 16))
                //                        .fontWeight(.bold)
                //                        .frame(maxWidth: .infinity)
                //                        .frame(height: 40)
                //                }
                //                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                //                .buttonStyle(.borderedProminent)
                Button {
                } label: {
                    Text("New user? Sign Up")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                }
                
                Spacer()
            }
            .padding()
            
        }
        
        .foregroundStyle(.white)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement:.topBarLeading) {
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .scaledToFit()
                        .tint(.white)
                }
            }
        }
    }
    
    
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
