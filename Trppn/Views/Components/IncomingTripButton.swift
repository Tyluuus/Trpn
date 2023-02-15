//
//  IncomingTripButton.swift
//  Trppn
//
//  Created by Piotr Tyl on 14/02/2023.
//

import SwiftUI

struct IncomingTripButton: View {
    var tripName: String
    var daysLeft: Int
    
    var body: some View {
        Button {
            print("test")
        } label: {
            VStack {
                VStack(alignment: .leading) {
                    Text(tripName)
                        .padding()
                        .font(Font.custom("Marker Felt", size: 28))
                }
                Text("Days left: \(Text("\(daysLeft)").foregroundColor(self.numberColor()))")
                    .font(Font.custom("Marker Felt", size: 24))
            }
            .frame(width: 250)
        }
        .buttonStyle(TripButton())
    }
    
    func numberColor() -> Color {
        if (daysLeft > 31) {
            return Color.green
        }
        if (daysLeft > 7) {
            return Color.yellow
        }
        return Color.red
    }
}

struct IncomingTripButton_Previews: PreviewProvider {
    static var previews: some View {
        IncomingTripButton(tripName: "Italy", daysLeft: 5)
    }
}
