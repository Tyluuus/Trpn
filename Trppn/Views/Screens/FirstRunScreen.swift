//
//  FirstRunScreen.swift
//  Trppn
//
//  Created by Piotr Tyl on 26/12/2022.
//

import SwiftUI

struct FirstRunScreen: View {
    @State private var name = ""
    @State private var isPressed = false

    var body: some View {
        NavigationView {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Text("Hello!")
                        .font(Font.custom("Marker Felt", size: 44))
                        .padding(EdgeInsets(top: 0, leading: 32, bottom: 0, trailing: 0))
                    Spacer()
                }
                .padding(EdgeInsets(top: geometry.size.height/4, leading: 0, bottom: 0, trailing: 0))
                HStack {
                    Text("What is your name?")
                        .font(Font.custom("Marker Felt", size: 36))
                        .padding(EdgeInsets(top: 8, leading: 32, bottom: 0, trailing: 0))
                    Spacer()
                }
                
                HStack {
                    TextField("", text: $name)
                        .font(Font.custom("Marker Felt", size: 30))
                        .placeholder(when: name.isEmpty, placeholder: {
                            Text("Enter your name")
                                .font(Font.custom("Marker Felt", size: 30))
                                .foregroundColor(.gray)
                        })
                        .padding(EdgeInsets(top: 12, leading: 32, bottom: 5, trailing: 0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(.secondary, lineWidth: 1)
                                .frame(width: geometry.size.width - 60, height: 48)
                        )
                    Spacer()
                }
                
                NavigationLink {
                    TripDetails(tripName: "Test", tripDate: Date())
                        .navigationBarBackButtonHidden(true)
                        .onAppear {
                            saveUserName(name: name)
                        }
                } label: {
                    Text("Next")
                        .foregroundColor(.black)
                        .frame(width: geometry.size.width - 40, height: 48)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.black, lineWidth: 2)
                        )
                        .font(Font.custom("Marker Felt", size: 32))
                        .padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
                }
                .disabled(name.isEmpty)
            }
        }
        }
                                                                                        }
}

struct FirstRunScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstRunScreen()
    }
}
