//
//  StackContentView2.swift
//  SwiftUICode
//
//  Created by Sofia Swidarowicz on 24/7/21.
//

import SwiftUI

struct StackContentView2: View {
    var body: some View {
        VStack {

            VStack(spacing: 15) {
                ZStack {
                    PriceView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple , icon: "burst")
                        .padding()
                        .offset(x: 0, y: 180)
                    PriceView(title: "Pro", price: "$19", textColor: .white, bgColor: Color(red: 255/255, green: 183/255, blue: 37/255), icon: "wand.and.rays")
                        .padding()
                        .scaleEffect(0.95)
                    PriceView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "dial")
                        .padding()
                        .scaleEffect(0.9)
                        .offset(x: 0, y: -180)

                }

            }
        }
    }
}


struct StackContentView2_Previews: PreviewProvider {
    static var previews: some View {
        StackContentView2()
    }
}

struct PriceView: View {

    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var icon: String?

    var body: some View {
        VStack {

            if let icon = icon {

                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(textColor)

            }

            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
