//
//  ContentView.swift
//  JSON
//
//  Created by Reales Rectoro Myles Clarence on 8/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var login = PostViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
