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
            VStack {
                Text("Basic")
                    .font(.system(.largeTitle, design:.rounded))
                    .fontWeight(.black)
                    .foregroundColor(.white)
                Text("$9")
                    .font(.system(size: 40,
                                  weight: .heavy,
                                  design: .rounded))
                    .foregroundColor(.white)
                Text("per month")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .padding(40)
            .background(Color.purple)
            .cornerRadius(10)
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
