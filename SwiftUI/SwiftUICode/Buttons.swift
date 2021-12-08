//
//  Buttons.swift
//  SwiftUICode
//
//  Created by Sofia Swidarowicz on 20/8/21.
//

import SwiftUI

struct SimpleButtonWithAction: View {
    var body: some View {
        Button(action: {
            print("Hello World tapped!")
        }, label: {
            Text("Hello World")
        })
        .font(.title)
        .padding()

        .background(Color.purple)
        .cornerRadius(40)
        .foregroundColor(.white)
        .padding(10)
        .overlay(
            RoundedRectangle(cornerRadius: 40)
                .stroke(Color.purple, lineWidth: 5)
        )
    }
}

struct ButtonWithImages: View {
    var body: some View {
        Button(action: {
            print("Delete button tapped!")
        }) {
            Image(systemName: "trash")
                .padding()
                .background(Color.red)
                .clipShape(Circle())
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ButtonWithImagesAndText: View {
    var body: some View {

        Button(action: {
            print("Delete tapped!")
        }) {
            HStack {
                Image(systemName: "trash")
                    .font(.title)
                Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(40)
        }
    }
}

struct ButtonWithImageAndTextLabel: View {
    var body: some View {
        Button(action: {
            print("Delete tapped!")
        }) {
            Label(
                title: {
                    Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
                },
                icon: {
                    Image(systemName: "trash")
                        .font(.title)
                }
            )
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.red)
        .cornerRadius(40)
    }
}

struct ButtonWithImageTextGradient: View {
    var body: some View {
        Button(action: {
            print("Delete tapped!")
        }) {
            Label(
                title: {
                    Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
                },
                icon: {
                    Image(systemName: "trash")
                        .font(.title)
                }
            )
        }
        .padding()
        .foregroundColor(.white)
        .background(
            LinearGradient(gradient:
                            Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]),
                           startPoint: .leading,
                           endPoint: .trailing)
        )
        .cornerRadius(40)
    }
}

struct ButtonWithImageTextGradientShadow: View {
    var body: some View {
        Button(action: {
            print("Delete tapped!")
        }) {
            Label(
                title: {
                    Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
                },
                icon: {
                    Image(systemName: "trash")
                        .font(.title)
                }
            )
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(
            LinearGradient(gradient:
                            Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]),
                           startPoint: .leading,
                           endPoint: .trailing)
        )
        .cornerRadius(40)
        .padding(.horizontal)
    }
}

struct ButtonWithImageTextGradientShadowStyle: View {
    var body: some View {
        VStack {
        Button(action: {
            print("Delete tapped!")
        }) {
            Label(
                title: {
                    Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
                },
                icon: {
                    Image(systemName: "trash")
                        .font(.title)
                }
            )
        }
        .buttonStyle(GradientBackgroundStyle())
        Button(action: {
            print("Edit!")
        }) {
            Label(
                title: {
                    Text("Edit")
                    .fontWeight(.semibold)
                    .font(.title)
                },
                icon: {
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                }
            )
        }
        .buttonStyle(GradientBackgroundStyle())
            Button(action: {
                print("Shared tapped!")
            }) {
                Label(
                    title: {
                        Text("Share")
                        .fontWeight(.semibold)
                        .font(.title)
                    },
                    icon: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
        }//VSTACK
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithImageTextGradientShadowStyle()
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(
                LinearGradient(gradient:
                                Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]),
                               startPoint: .leading,
                               endPoint: .trailing)
            )
            .cornerRadius(40)
            .padding(.horizontal)
    }
}
