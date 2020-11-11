//
//  ContentView.swift
//  ClimbGesh&CO
//
//  Created by Tatiana Ilvutikova on 12.11.2020.
//

import SwiftUI


struct ContentView: View {
    // добавим свойство которое будем передавать другим вью
    // add property will be the message (it is our data) we will be passing to SecondView
    let data: [ClimbingLocation] = Bundle.main.decode("climb.json")

    var body: some View {
        NavigationView {
            
            ListRowsLocations(locations: data)
    
            .navigationBarTitle("ClimbGesh")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
