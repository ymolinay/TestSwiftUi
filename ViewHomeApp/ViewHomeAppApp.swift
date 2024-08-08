//
//  ViewHomeAppApp.swift
//  ViewHomeApp
//
//  Created by Yrving Heysen Molina Yriarte on 8/08/24.
//

import SwiftUI

@main // punto  de entrada de la aplicación
struct ViewHomeAppApp: App { // protocolo que toda aplicación debe conformar
    var body: some Scene { // escena de la interfaz de nuestra app
        WindowGroup { // ventana principal de nuestra app
            LoginView()
        }
    }
}
