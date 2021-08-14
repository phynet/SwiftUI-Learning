//
//  ScrollView.swift
//  SwiftUICode
//
//  Created by Sofia Swidarowicz on 9/8/21.
//

import SwiftUI

struct ScrollView: View {
    var image: String
    var category: String
    var heading: String
    var author: String

    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("Written by \(author)".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.sRGB,
                          red: 150/255,
                          green: 150/255,
                          blue: 150/255,
                          opacity: 0.1),
                    lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(
            image: "swiftui-button",
            category: "SwiftUI",
            heading: "Drawing a Border with Rounded Corners",
            author: "Simon Ng")
    }
}
