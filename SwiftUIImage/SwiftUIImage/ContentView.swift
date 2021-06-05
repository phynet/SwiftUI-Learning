//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Sofia Swidarowicz on 07/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .fontWeight(.bold)
            .font(.custom("Helvetica Neue", size: 25))
            .padding()
        Text("Hello, second world!")
            .fontWeight(.bold)
            .font(.system(.title, design: .rounded))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
