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
    var body: some View {
        ZStack {
            Color(.colorBackground).ignoresSafeArea()
            VStack{

            }
            
        }
        .navigationTitle("Entries")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: AddEntryView()) {
                    Image(systemName: "plus")
                        .tint(.white)
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
