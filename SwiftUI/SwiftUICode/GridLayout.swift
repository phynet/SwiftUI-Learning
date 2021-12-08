//
//  GridLayout.swift
//  SwiftUICode
//
//  Created by Sofia Swidarowicz on 9/11/21.
//

import SwiftUI

private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]

private var threeColumnGrid = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]

private var colors: [Color] = [.yellow, .purple, .green]

struct GridLayout: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: threeColumnGrid, spacing: 20) {
                ForEach((0...9999), id: \.self) {
                    var _ = print(" the value of: \($0) symbol count \(symbols.count) module is \($0 % symbols.count)")
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(width: 50, height: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}

//Modify frame to use infinity
//we modify the frame size to make the grid item wider

struct GridLayout2: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: threeColumnGrid, spacing: 0) {
                ForEach((0...9999), id: \.self) {

                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                    //we modify the frame size to make the grid item wider
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}
///Grid Layout (Flexible)
/// Vary the grid layout
///
struct GridLayout3: View {

    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]


    /// The spacing between grid items is controlled by the instances of GridItem initialized in gridItemLayout. You can set the spacing between items by passing a value to the spacing parameter. Therefore, to remove the spacing between rows, you can initialize the gridLayout variable like this:
    ///

    private var gridItemLayout = [GridItem(.flexible(), spacing: 0),
                                  GridItem(.flexible(), spacing: 0),
                                  GridItem(.flexible(), spacing: 0)]

    ///the above can be written as
    private var threeColumnGrid2 =  Array(repeating: GridItem(.flexible(), spacing: 0), count: 3)

    /// The above also can be written as
    private var sixColumnGrid: [GridItem] = Array(repeating: .init(.flexible()), count: 6)


    private var colors: [Color] = [.yellow, .purple, .green]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: threeColumnGrid2, spacing: 0) {
                ForEach((0...9999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                    //we modify the frame size to make the grid item wider
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}


///Grid Layout (Adaptive)
/// Vary the grid layout
/// 
struct GridLayout4: View {


    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]

    ///.flexible() is just one of the size types for controlling the grid layout. If you want to place as many items as possible in a row, you can use the adaptive size type

    //minimum is the size of the grid
    //private var gridItemLayout = [GridItem(.adaptive(minimum: 50))]
    private var gridItemLayout = [GridItem(.adaptive(minimum: 350))]

    private var colors: [Color] = [.yellow, .purple, .green]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach((0...9999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                    //we modify the frame size to make the grid item wider
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}

///Grid Layout (Fixed)
/// Vary the grid layout
///
struct GridLayout5: View {


    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]


    private var gridItemLayout = [GridItem(.fixed(100)), GridItem(.fixed(150))]

    private var colors: [Color] = [.yellow, .purple, .green]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach((0...9999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                    //we modify the frame size to make the grid item wider
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}

///Grid Layout (Mixed)
/// Vary the grid layout
///
struct GridLayout6: View {


    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]


    private var gridItemLayout = [GridItem(.fixed(150)),
                                  GridItem(.adaptive(minimum: 50))]

    private var colors: [Color] = [.yellow, .purple, .green]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach((0...9999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                    //we modify the frame size to make the grid item wider
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}

///Grid Layout (Horizontal)
/// Vary the grid layout
///
struct GridLayoutHorizontal: View {


    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]


    private var gridItemLayout = [GridItem(.fixed(150)),
                                  GridItem(.adaptive(minimum: 50))]

    private var colors: [Color] = [.yellow, .purple, .green]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItemLayout, spacing: 20) {
                ForEach((0...9999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: .infinity)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct GridLayout_Previews: PreviewProvider {
    static var previews: some View {
        Group {

            GridLayout4()

        }
    }
}
