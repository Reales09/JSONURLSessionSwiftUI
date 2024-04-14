//
//  Home.swift
//  JSON
//
//  Created by Reales Rectoro Myles Clarence on 10/04/24.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var login : PostViewModel
    var body: some View {
        
        NavigationView{
            Text("Bienvenido")
                .navigationBarTitle("JSON")
                .navigationBarItems(leading:
                                        Button(action:{
                    login.authenticated = 0
                    UserDefaults.standard.removeObject(forKey: "sesion")
                    
                }){
                    Text("Salir")
                },trailing:  Button(action:{
                    //
                }){
                    Text("Siguiente")
                })
        }
    }
}

#Preview {
    Home()
}
