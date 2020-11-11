//
//  IRowLocation.swift
//  ClimbGesh&CO
//
//  Created by Tatiana Ilvutikova on 12.11.2020.
//

import SwiftUI

struct IRowLocation: View {                 //this is individual row FROM the list of Rows Locations
    let location: ClimbingLocation          // create, this property help us capture the data sent from ContentView
    
    var body: some View {
        NavigationLink(destination: ListRowsCrags(crags: location.crags) ) {
        VStack {
            Text(location.name)
        }
        }
    }
}

struct IRowLocation_Previews: PreviewProvider {
    static let data: [ClimbingLocation] = Bundle.main.decode("climb.json")
    static var previews: some View {
        IRowLocation(location: data[0])
    }
}
