//
//  NewElementScreen.swift
//  Trppn
//
//  Created by Piotr Tyl on 26/12/2022.
//

import SwiftUI

struct NewElementScreen: View {
    @State private var name = ""
    @State private var isPressed = false

    var body: some View {
        GeometryReader { geometry in
            VStack {
                
                HStack {
                    Text("Enter element name")
                        .font(Font.custom("Marker Felt", size: 36))
                        .padding(EdgeInsets(top: 8, leading: 32, bottom: 0, trailing: 0))
                    Spacer()
                }
                .padding(EdgeInsets(top: geometry.size.height/3, leading: 0, bottom: 0, trailing: 0))
                
                HStack {
                    TextField("", text: $name)
                        .font(Font.custom("Marker Felt", size: 30))
                        .placeholder(when: name.isEmpty, placeholder: {
                            Text("Element Name")
                                .font(Font.custom("Marker Felt", size: 30))
                                .foregroundColor(.gray)
                        })
                        .padding(EdgeInsets(top: 12, leading: 32, bottom: 5, trailing: 0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.secondary, lineWidth: 1)
                                .frame(width: geometry.size.width - 60, height: 48)
                        )
                    Spacer()
                }
                
                Button("Add") {
                    //TODO: button effect
                }
                .frame(width: geometry.size.width - 40, height: 48)
                .foregroundColor(.white)
                .background(.primary)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .font(Font.custom("Marker Felt", size: 32))
                .padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
                .scaleEffect(isPressed ? 1.1 : 1.0)
                .pressEvents {
                        isPressed = true
                }
                onRelease: {
                        isPressed = false
                }
            }
        }
    }
}

struct NewElementScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewElementScreen()
    }
}
