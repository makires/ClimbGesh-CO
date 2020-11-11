//
//  ListRowsRoutes.swift
//  ClimbGesh&CO
//
//  Created by Tatiana Ilvutikova on 12.11.2020.
//

import SwiftUI

struct ListRowsRoutes: View {
    let routes: [Route]
    
    var body: some View {
        List(routes) { route in
            IRowRoute(route: route)
        }
    }
}

struct ListRowsRoutes_Previews: PreviewProvider {
    static let data: [ClimbingLocation] = Bundle.main.decode("climb.json")

    static var previews: some View {
        ListRowsRoutes(routes: data[0].crags[0].routes)
    }
}
