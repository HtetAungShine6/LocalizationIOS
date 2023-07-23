//
//  SplashScreenView.swift
//  Splash Screen App
//
//  Created by Akito Daiki on 17/5/2566 BE.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive{
            ContentView()
        } else {
            VStack{
                Image("mascot")
                Text("Hello from FREDDY!")
                    .font(.system(size: 40))
                    .foregroundColor(.purple)
                    .fontWeight(.bold)
                    .opacity(0.7)
                    .shadow(color: .orange, radius: 2, x: 1, y: 0.5)
                    .padding()
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.0)){
                    self.size = 1.1
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
