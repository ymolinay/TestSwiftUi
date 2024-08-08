//
//  HomeView.swift
//  ViewHomeApp
//
//  Created by Yrving Heysen Molina Yriarte on 8/08/24.
//

import SwiftUI

struct HomeView: View {
    var email: String
    
    var body: some View {
        
        VStack(spacing: 20, content: {
            
            Text("Bienvenido")
            
            Text(email)
            
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            
            Spacer()
            
        }).padding()
        
    }
}

#Preview {
    HomeView(email: "yrving@yopmail.com")
}
