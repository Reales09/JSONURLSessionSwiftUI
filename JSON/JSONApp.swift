//
//  JSONApp.swift
//  JSON
//
//  Created by Reales Rectoro Myles Clarence on 8/04/24.
//

import SwiftUI

@main
struct JSONApp: App {
    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
