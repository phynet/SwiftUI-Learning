//
//  ScrollView.swift
//  SwiftUICode
//
//  Created by Sofia Swidarowicz on 15/8/21.
//

import SwiftUI

struct ContentScrollView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Monday, Aug 20".uppercased())
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Your Reading")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.black)
                    }
                    Spacer()
                }
                .padding([.top, .horizontal])

                HStack {
                    Group {
                        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")

                        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")

                        CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")

                        CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                    }
                    .frame(width: 300)
                }
                Spacer()
            }
        } //SCROLL
    }
}

struct ContentScrollView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentScrollView()
            ContentScrollView()
        }
    }
}
