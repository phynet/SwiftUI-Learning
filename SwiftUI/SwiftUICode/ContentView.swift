//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Sofia Swidarowicz on 07/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("paris")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            //.scaledToFit()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300)
            //.clipped()
            .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
