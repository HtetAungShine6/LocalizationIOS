//
//  ContentView.swift
//  Splash Screen App
//
//  Created by Akito Daiki on 17/5/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
                .opacity(0.4)
            Text("Hello! I am Htet Aung Shine AKA Freddy!")
                .foregroundColor(.orange)
                .fontWeight(.bold)
                .font(.system(size: 30))
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
