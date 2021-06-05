//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Sofia Swidarowicz on 07/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.gray)
            //Center the text
            .multilineTextAlignment(.center)
            //limit the number of lines
            //.lineLimit(10)
            /*
             Earlier, I mentioned that the Text control displays multiple lines by default. The reason is that the SwiftUI framework has set a default value of nil for the lineLimit modifier. You can change the value of .lineLimit to nil and see the result:
             */
                .lineLimit(nil)
            //truncate mode
            .truncationMode(.head)
            .lineSpacing(10)
            .padding()
        //rotate the text 2D
            //.rotationEffect(.degrees(10), anchor: UnitPoint(x: 0, y: 0))
            //Star Wars effect
            .rotation3DEffect(
                .degrees(60),
                axis: (x: 1, y: 0.0, z: 0.0))
            .shadow(color: .gray, radius: 6, x: 0, y: 7)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
