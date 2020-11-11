//
//  ListRowCrags.swift
//  ClimbGesh&CO
//
//  Created by Tatiana Ilvutikova on 12.11.2020.
//

import SwiftUI

struct ListRowsCrags: View {
    let crags: [Crag]
    
    var body: some View {
        List(crags) { crag in
        IRowCrag(crag: crag)
        }
    }
}

struct ListRowsCrags_Previews: PreviewProvider {
    static let data: [ClimbingLocation] = Bundle.main.decode("climb.json")
    
    static var previews: some View {
        ListRowsCrags(crags: data[0].crags)
    }
}
