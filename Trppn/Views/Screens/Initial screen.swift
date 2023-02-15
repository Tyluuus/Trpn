//
//  Initial screen.swift
//  Trppn
//
//  Created by Piotr Tyl on 24/12/2022.
//

import SwiftUI

struct Initial_screen: View {

    var savedTrips = [SavedTrip(id: 1, name: "Italy", howLong: 4, howManyPeople: 2), SavedTrip(id: 3, name: "France", howLong: 3, howManyPeople: 1), SavedTrip(id: 6, name: "Germany", howLong: 7, howManyPeople: 5)]
    
    var body: some View {
        VStack{
            HStack {
                Text("Hello Piotr")
                    .bold()
                    .font(.system(size: 28))
                .padding(EdgeInsets(top: 0, leading: 44, bottom: 0, trailing: 0))
                Spacer()
            }
            .padding(30)
            Text("Your saved lists")
            HStack{
                VStack {
                    ForEach(savedTrips[0...1]) { trip in
                        /*@START_MENU_TOKEN@*/Text(trip.name)/*@END_MENU_TOKEN@*/
                    }
                }
                VStack {
                    ForEach(savedTrips[2...]) { trip in
                        /*@START_MENU_TOKEN@*/Text(trip.name)/*@END_MENU_TOKEN@*/
                    }
                }
            }
            
        }
        
    }
}

struct Initial_screen_Previews: PreviewProvider {
    static var previews: some View {
        Initial_screen()
    }
}
