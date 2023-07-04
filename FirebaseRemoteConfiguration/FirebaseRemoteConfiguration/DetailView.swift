//
//  DetailView.swift
//  FirebaseRemoteConfiguration
//
//  Created by Ahmed Amin on 04/07/2023.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
            
            ZStack {
              
                KFImage(URL(string: RemoteConfigurationManager.value(forKey: RemoteConfigurationValue.backgroundURL))!)
 
            }
            .overlay(
                
                HStack {
                    Button {
                        
                        presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                    }
                        
                    
                    Text(RemoteConfigurationManager.value(forKey: RemoteConfigurationValue.textMessage))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.horizontal)
                }
                    .padding([.top,.horizontal])
                
                , alignment: .topLeading
            )
        
        

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
