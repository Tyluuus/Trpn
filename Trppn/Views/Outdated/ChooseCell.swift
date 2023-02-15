//
//  ChooseCell.swift
//  Trppn
//
//  Created by Piotr Tyl on 19/12/2022.
//

import SwiftUI

struct ChooseCell: View {
    @State private var isClicked = false
    @State private var isPressed = false
    
    var optionsList: [String] = ["Uno", "Dos", "Tres", "Quatro", "five", "six", "seven", "eight", "nine", "ten"]
    
    var cellLabel: String = "Click me"
    
    var body: some View {
        
        
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 200, height: 100)
                    .foregroundColor(!isClicked ? Color(UIColor.systemBackground) : .gray)
                    .shadow(color: Color(UIColor.label), radius: 3)
                HStack {
                    Text(cellLabel)
                        .padding(45)
                    !isClicked ? Image(systemName: "chevron.right") : Image(systemName: "chevron.down")
                }
            }
            .scaleEffect(isPressed ? 1.05 : 1.0)
            .opacity(isPressed ? 0.6 : 1.0)
            .onTapGesture {
                withAnimation(.linear(duration: 0.2)) {
                    isClicked.toggle()
                }
            }
            .pressEvents {
                withAnimation(.easeInOut(duration: 0.2)) {
                    isPressed = true
                }
            }
        onRelease: {
            withAnimation {
                isPressed = false
            }
        }
            if isClicked {
                    List{
                        ForEach(optionsList, id: \.self) {
                            SwitchCell(labelText: "\($0)")
                                .scaleEffect(0.75)
                                .frame(width: UIScreen.main.bounds.width)
                                .listRowSeparator(.hidden)
                        }
                    }
                    .scrollContentBackground(.hidden)
            }
            
        }
    }
}

struct ChooseCell_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCell()
    }
}
