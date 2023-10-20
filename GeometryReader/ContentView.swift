//
//  ContentView.swift
//  GeometryReader
//
//  Created by Student Account on 10/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
               
                Text("Background: paper")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width * 0.9, alignment: .leading)
                    .position(x: geometry.size.width * 0.05, y: geometry.size.height / 2)

               
                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFit()
                    .frame(height: geometry.size.height * 0.5)
                    .opacity(0.35) // Setting opacity to 35% as an example within 20-50% range
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


