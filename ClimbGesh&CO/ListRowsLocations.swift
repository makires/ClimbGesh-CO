//
//  ListRowLocation.swift
//  ClimbGesh&CO
//
//  Created by Tatiana Ilvutikova on 12.11.2020.
//

import SwiftUI

struct ListRowsLocations: View {
    let locations: [ClimbingLocation] // create, this property help us capture the data sent from ContentView
    
    var body: some View {

        List(locations) { location in
//            NavigationLink(destination: Text("experiment")) {
            IRowLocation(location: location)
                
//        }
        }
        
    }
}

struct ListRowsLocations_Previews: PreviewProvider {
    static let data: [ClimbingLocation] = Bundle.main.decode("climb.json")
    static var previews: some View {
        ListRowsLocations(locations: data)
    }
}
