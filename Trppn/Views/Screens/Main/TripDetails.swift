//
//  TripDetails.swift
//  Trppn
//
//  Created by Piotr Tyl on 27/12/2022.
//

import SwiftUI

struct TripDetails: View {
    @State private var isPressed = false
    @State private var isSaved = false
    var tripName: String
    var tripDate: Date

    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Spacer()
                    Button {
                        //TODO: Button action
                        isSaved.toggle()
                    } label: {
                        Image(systemName: !isSaved ? "star" : "star.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.primary)
                            .shadow(radius: 1)
                    }
                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 16))
                }
                HStack {
                    Text(tripName)
                        .font(Font.custom("Marker Felt", size: 48))
                        .padding(EdgeInsets(top: 12, leading: 32, bottom: 0, trailing: 0))
                    Spacer()
                }
                HStack {
                    Text(tripDate.formatToTripDate())
                        .font(Font.custom("Marker Felt", size: 28))
                        .padding(EdgeInsets(top: 1, leading: 32, bottom: 0, trailing: 0))
                    Spacer()
                }
                List {
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                    
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                    
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                    
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                    
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                    
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                    
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                    
                    ChecklistRow(elementName: "Jeden")
                        .listRowSeparator(.hidden)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 24, trailing: 0))
                    
                    
                    Button("Add element") {
                        //TODO: button effect
                    }
                    .frame(width: geometry.size.width - 40, height: 48)
                    .foregroundColor(.white)
                    .background(.primary)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .font(Font.custom("Marker Felt", size: 32))
                    .scaleEffect(isPressed ? 1.1 : 1.0)
                    .pressEvents {
                            isPressed = true
                    }
                    onRelease: {
                            isPressed = false
                    }
                }
                .background(.clear)
                .scrollContentBackground(.hidden)
                
               
            }
        }
    }
}

struct TripDetails_Previews: PreviewProvider {
    static var previews: some View {
        TripDetails(tripName: "Italy", tripDate: Date())
    }
}
