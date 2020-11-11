//
//  IRowRoute.swift
//  ClimbGesh&CO
//
//  Created by Tatiana Ilvutikova on 12.11.2020.
//

import SwiftUI

struct IRowRoute: View {
    let route: Route
    
    var body: some View {
        
        Text(route.name)
    }
}

struct IRowRoute_Previews: PreviewProvider {
    static let data: [ClimbingLocation] = Bundle.main.decode("climb.json")

    static var previews: some View {
        IRowRoute(route: data[0].crags[0].routes[0])
    }
}
