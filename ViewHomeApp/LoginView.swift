//
//  LoginView.swift
//  ViewHomeApp
//
//  Created by Yrving Heysen Molina Yriarte on 8/08/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isHomeViewActive: Bool = false
    @State private var showingAlert: Bool = false
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 20, content: {
                Text("Iniciar sesión")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextField("Correo Electrónico", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                SecureField("Contraseña", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                Button(action: {
                    if (email.isEmpty || password.isEmpty) {
                        showingAlert = true
                    } else {
                        isHomeViewActive = true
                    }
                }, label: {
                    Text("Ingresar")
                        .foregroundColor(.white)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(.blue)
                        .cornerRadius(8)
                })
                .alert(isPresented: $showingAlert, content: {
                    Alert(title: Text("Error"), message: Text("Complete los campos"), dismissButton: Alert.Button.default(Text("Ok")))
                })
                .navigationDestination(isPresented: $isHomeViewActive, destination: {
                    HomeView(email: email)
                })
                
                Spacer()
            })
            .padding()
        }
        
    }
}

#Preview {
    LoginView()
}
