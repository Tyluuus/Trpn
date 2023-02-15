//
//  MainPage.swift
//  Trppn
//
//  Created by Piotr Tyl on 13/02/2023.
//

import SwiftUI

struct MainPage: View {
    var userName: String = getUserName() ?? "Joe"
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                Group {
                    HStack {
                        Spacer()
                        Button {
                            //TODO: Button action
                        } label: {
                            Image(systemName: "gear")
                                .font(.system(size: 30))
                                .foregroundColor(.primary)
                                .shadow(radius: 1)
                        }
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 16))
                    }
                    HStack {
                        Text("Hello, \(userName)")
                            .font(Font.custom("Marker Felt", size: 48))
                    }
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                    HStack {
                        Text("Where are we Trpn?")
                            .font(Font.custom("Marker Felt", size: 28))
                    }
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                
                HStack {
                    Spacer()
                    Button("Let's plan something new") {
                        print("Go to new trip")
                    }
                    .buttonStyle(TripButton())
                    Spacer()
                }
                .padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 0))
                
                HStack {
                    Text("Incoming trips")
                        .font(Font.custom("Marker Felt", size: 30))
                }
                .padding(EdgeInsets(top: 32, leading: 16, bottom: 0, trailing: 0))
                ScrollView(.horizontal) {
                    LazyHGrid(rows: [GridItem(.flexible(minimum: 150, maximum: 250))], spacing: 20) {
                        IncomingTripButton(tripName: "Italy", daysLeft: 5)
                        IncomingTripButton(tripName: "Poland", daysLeft: 26)
                        IncomingTripButton(tripName: "Germany", daysLeft: 180)
                            
                    }
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }
                .scrollIndicators(.hidden)
                
                HStack {
                    Text("Saved checklists")
                        .font(Font.custom("Marker Felt", size: 30))
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                
                ScrollView(.horizontal) {
                    LazyHGrid(rows: [GridItem(.flexible(minimum: 75, maximum: 250)), GridItem(.flexible(minimum: 75, maximum: 250))], spacing: 20) {
                        Group {
                            TripCell(tripName: "Italy")
                            TripCell(tripName: "Italy")
                            TripCell(tripName: "Italy")
                            TripCell(tripName: "Italy")
                            TripCell(tripName: "Italy")
                            TripCell(tripName: "Italy")
                            TripCell(tripName: "Italy")
                        }
                        TripCell(tripName: "Italy")
                        TripCell(tripName: "Italy")
                        TripCell(tripName: "Italy")
                        TripCell(tripName: "Italy")
                            
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                }
                .scrollIndicators(.hidden)
            }
            
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
