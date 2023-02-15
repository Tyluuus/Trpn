//
//  ChecklistRow.swift
//  Trppn
//
//  Created by Piotr Tyl on 27/12/2022.
//

import SwiftUI

struct ChecklistRow: View {
    @State private var isChecked = false
    var elementName: String
    
    var body: some View {
        Button {
            isChecked.toggle()
        } label: {
            HStack {
                Image(systemName: !isChecked ? "circle" : "checkmark.circle")
                    .font(.system(size: 28))
                Text(elementName)
                    .font(Font.custom("Marker Felt", size: 24))
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                    .strikethrough(isChecked, pattern: .solid)
                Spacer()
            }
            .foregroundColor(isChecked ? .green : .primary)
        }
    }
}

struct ChecklistRow_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistRow(elementName: "Umbrella")
    }
}
