//
//  TripCell.swift
//  Trppn
//
//  Created by Piotr Tyl on 25/12/2022.
//

import SwiftUI

struct TripCell: View {
    var tripName: String

    var body: some View {
        
        Button(tripName) {
            //TODO: Button action
        }
        .buttonStyle(TripButton())
        
    }
}

struct TripCell_Previews: PreviewProvider {
    static var previews: some View {
        TripCell(tripName: "Italy")
    }
}
