//
//  ContentView.swift
//  Glow
//
//  Created by Philip Davis on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    @State private var playing = true
    
    var Photo: some View = Image("shot")
        .resizable()
        .aspectRatio(contentMode: .fit)
        
    
    var body: some View {
        Photo
            .cornerRadius(64)
            .blur(radius: 30)
            .offset(y: 10)
            .opacity(playing ? 0.9 : 0)
            .frame(width: playing ? 300 : 260)
            .overlay(Photo.cornerRadius(12))
            .onTapGesture {
                playing.toggle()
            }
            .animation(.spring(response: 0.3, dampingFraction: 0.5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
