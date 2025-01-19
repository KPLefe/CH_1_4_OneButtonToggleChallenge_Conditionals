//
//  ContentView.swift
//  CH_1_4_was_to_print_plus_conditionals
//
//  Created by Kevin Lefebvre on 1/18/25.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var systemImageName = ""
    @State private var imageTextName = ""
    var body: some View {
        Spacer()
        VStack {
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(imageTextName)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
        }
        Spacer()
        HStack { //  
            Button("Press Me!") {
                if (imageTextName == "You Are Awesome!") {
                    imageTextName = "You Are Great"
                    systemImageName = "hand.thumbsup.fill"
                } else {
                    imageTextName = "You Are Awesome!"
                    systemImageName = "sun.max.fill"
                }
                
            }
        }
        .buttonStyle(.borderedProminent)
        .tint(.orange)
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}
