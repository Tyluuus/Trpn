//
//  OutdatedTrip.swift
//  Trppn
//
//  Created by Piotr Tyl on 26/12/2022.
//

import SwiftUI

struct OutdatedTrip: View {
    @State private var isSavePressed = false
    @State private var isRemovePressed = false

    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Text("Your checklist is outdated.")
                        .font(Font.custom("Marker Felt", size: 28))
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                    Spacer()
                }
                .padding(EdgeInsets(top: geometry.size.height/4, leading: 0, bottom: 0, trailing: 0))
                TripCell(tripName: "Placecholder")
                    .padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 0))
                HStack {
                    Text("What would you like to do?")
                        .font(Font.custom("Marker Felt", size: 28))
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                    Spacer()
                }
                .padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 0))
                
                HStack {
                    Button("Remove") {
                        //TODO: button effect
                    }
                    .frame(width: geometry.size.width/2 - 20, height: 48)
                    .foregroundColor(.red)
                    .background(.primary)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .font(Font.custom("Marker Felt", size: 32))
                    .padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
                    .scaleEffect(isRemovePressed ? 1.1 : 1.0)
                    .pressEvents {
                        isRemovePressed = true
                    }
                onRelease: {
                    isRemovePressed = false
                }
                    
                    Button("Save") {
                        //TODO: button effect
                    }
                    .frame(width: geometry.size.width/2 - 20, height: 48)
                    .foregroundColor(.white)
                    .background(.primary)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .font(Font.custom("Marker Felt", size: 32))
                    .padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
                    .scaleEffect(isSavePressed ? 1.1 : 1.0)
                    .pressEvents {
                        isSavePressed = true
                    }
                onRelease: {
                    isSavePressed = false
                }
                }
            }
        }
    }
}

struct OutdatedTrip_Previews: PreviewProvider {
    static var previews: some View {
        OutdatedTrip()
    }
}
