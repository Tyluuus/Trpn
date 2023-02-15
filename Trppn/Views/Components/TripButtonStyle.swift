//
//  TripButtonStyle.swift
//  Trppn
//
//  Created by Piotr Tyl on 27/12/2022.
//

import SwiftUI

struct TripButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.custom("Marker Felt", size: 24))
            .padding()
            .foregroundColor(.primary)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.primary, lineWidth: 4)
                    .shadow(color: Color(UIColor.label), radius: 2, x: 2, y: 2)
            )
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
