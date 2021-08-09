//
//  ScrollView.swift
//  SwiftUICode
//
//  Created by Sofia Swidarowicz on 9/8/21.
//

import SwiftUI

struct ScrollView: View {
    var body: some View {
        VStack {
            Image("swiftui-button")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }

    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView()
    }
}
