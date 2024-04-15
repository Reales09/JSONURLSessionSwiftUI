//
//  Home.swift
//  JSON
//
//  Created by Reales Rectoro Myles Clarence on 10/04/24.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var login : PostViewModel
    @StateObject var json = Modelo1ViewModel()
    var body: some View {
        
        NavigationView{
            if json.datosModelo.isEmpty{
                ProgressView()
            }else{
                List(json.datosModelo, id:\.id){ item in
                    VStack(alignment: .leading){
                        Text(item.name)
                        Text(item.email)
                        Text(item.address.street)
                        Text(item.address.geo.lat)
                        Text(item.address.geo.lng)

                    }
                    
                } .navigationBarTitle("JSON")
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
}

#Preview {
    Home()
}
