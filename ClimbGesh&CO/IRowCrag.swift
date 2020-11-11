//
//  IRowCrag.swift
//  ClimbGesh&CO
//
//  Created by Tatiana Ilvutikova on 12.11.2020.
//

import SwiftUI

struct IRowCrag: View {
    let crag: Crag
    
    var body: some View {
        NavigationLink(destination: ListRowsRoutes(routes: crag.routes) ) {
        Text(crag.cragName)
        }
    }
}

struct IRowCrag_Previews: PreviewProvider {
    static let data: [ClimbingLocation] = Bundle.main.decode("climb.json")
    
    static var previews: some View {
        IRowCrag(crag: data[0].crags[0])
    }
}
