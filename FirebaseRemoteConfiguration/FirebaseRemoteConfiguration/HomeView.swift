//
//  HomeView.swift
//  FirebaseRemoteConfiguration
//
//  Created by Ahmed Amin on 04/07/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isSheetPresented: Bool = false
    
    var body: some View {
        
        ZStack {
            Button {
                
                isSheetPresented.toggle()
                
            } label: {
                Text("Tap Me")
                    .font(.title)
                    .foregroundColor(Color.blue)
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
