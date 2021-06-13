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
            HStack {

                PricingView(title: "Basic",
                        price: "$9",
                        textColor: .white,
                        bgColor: .purple)
/*The order of the views embedded in the ZStack determine how the views are overlaid with each other. For the code bellow, the Text view will overlay on top of the pricing view. In the canvas, you should see the pricing layout like this:

                 */
                ZStack {
                PricingView(title: "Pro",
                        price: "$19",
                        textColor: .black,
                        bgColor: Color(red: 240/255,
                                       green: 240/255,
                                       blue: 240/255))
                    Text("Best for designer")
                            .font(.system(.caption,
                                          design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                }
            }
            .padding(.horizontal)
        }
    }
}

struct StackContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose")
                .font(.system(.largeTitle, design:.rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design:.rounded))
                .fontWeight(.black)
        }
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color

    var body: some View {

            VStack {
                Text(title)
                    .font(.system(.largeTitle, design:.rounded))
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
