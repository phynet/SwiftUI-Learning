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
//            .frame(width: 300)
            .clipped()
//            .clipShape(Circle())
//            //.clipShape(Ellipse())
//            //.clipShape(Capsule())
//            .opacity(0.7)
            .overlay(
//            Image(systemName: "heart.fill")
//                .font(.system(size: 50))
//                .foregroundColor(.black)
//                .opacity(0.5)
                Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast.\n\n- Ernest Hemingway")
                           .fontWeight(.heavy)
                           .font(.system(.headline, design: .rounded))
                           .foregroundColor(.white)
                           .padding()
                           .background(Color.black)
                           .cornerRadius(20)
                           .opacity(0.8)
                           .padding(),

                       alignment: .top

            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
