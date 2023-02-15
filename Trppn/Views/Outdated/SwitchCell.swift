//
//  SwitchCell.swift
//  Trppn
//
//  Created by Piotr Tyl on 19/12/2022.
//

import SwiftUI

struct SwitchCell: View {
    @State private var isClicked = false
    @State private var isPressed = false
    var labelText: String

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 200, height: 100)
                .foregroundColor(!isClicked ? Color(UIColor.systemBackground) : Color(red: 120/255, green: 220/255, blue: 90/255))
                .shadow(color: Color(UIColor.label), radius: 3)
            Text(labelText)
        }
        .scaleEffect(isPressed ? 1.05 : 1.0)
        .opacity(isPressed ? 0.6 : 1.0)
        .onTapGesture {
            isClicked = !isClicked
        }
        .pressEvents {
            withAnimation(.easeInOut(duration: 0.1)) {
                isPressed = true
            }
        } onRelease: {
            withAnimation {
                isPressed = false
            }
        }
    }
}

struct SwitchCell_Previews: PreviewProvider {
    static var previews: some View {
        SwitchCell(labelText: "Test")
    }
}
