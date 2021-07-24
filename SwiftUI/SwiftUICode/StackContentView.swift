//
//  StackContentView.swift
//  SwiftUICode
//
//  Created by Sofia Swidarowicz on 13/6/21.
//

import SwiftUI

struct StackContentView: View {
    var body: some View {
        VStack {
            HeaderView()

            HStack(spacing: 15) {

                PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
/*The order of the views embedded in the ZStack determine how the views are overlaid with each other. For the code bellow, the Text view will overlay on top of the pricing view. In the canvas, you should see the pricing layout like this: */

                //Pro
                ZStack {
                PricingView(title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                    FooterView(offsetY: 87, text: "Best for designer")

                }
            }
            .padding(.horizontal)

            //team
            ZStack {
                PricingView(title: "Team",
                        price: "$299",
                        textColor: .white,
                        bgColor: Color(red: 62/255, green: 63/255, blue: 70/255),
                        icon: "wand.and.rays")
                    .padding()
                FooterView(offsetY: 87, text: "Perfect for teams with 20 members")
            }

            //Vertical
            Spacer()
        }
    }
}

struct FooterView: View {
    var offsetY: Double
    var text: String

    var body: some View {
        Text(text)
                .font(.system(.caption,
                              design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(5)
                .background(Color(red: 255/255, green: 183/255, blue: 37/255))
            .offset(x:0, y: CGFloat(offsetY))
    }
}

struct StackContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }

            Spacer()
        }
        .padding()
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var icon: String?

    var body: some View {

            VStack {
                icon.map({
                    Image(systemName: $0)
                        .font(.largeTitle)
                        .foregroundColor(textColor)
                })
                Text(title)
                    .font(.system(.title, design:.rounded))
                    .fontWeight(.black)
                    .foregroundColor(textColor)
                Text(price)
                    .font(.system(size: 40,
                                  weight: .heavy,
                                  design: .rounded))
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
