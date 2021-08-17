//
//  ScrollView.swift
//  SwiftUICode
//
//  Created by Sofia Swidarowicz on 15/8/21.
//

import SwiftUI

struct ContentScrollView: View {
    var body: some View {

        ScrollView(.horizontal) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Monday, Aug 20".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Your Reading")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)

                } //VSTACK
                Spacer()
            }.padding([.top, .horizontal])

            HStack {
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                    .frame(width: 300)
                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                    .frame(width: 300)
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                    .frame(width: 300)
                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                    .frame(width: 300)
            }


        }

    }
}

struct ContentScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ContentScrollView()
    }
}
