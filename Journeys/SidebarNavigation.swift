//
//  SidebarNavigation.swift
//  SidebarNavigation
//
//  Created by Robert DeLaurentis on 8/26/21.
//

import SwiftUI

struct SidebarNavigation: View {
    @EnvironmentObject var locations: Locations

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DiscoverView(location: locations.primary)) {
                    Text("Discover")
                }

                NavigationLink(destination: PicksView()) {
                    Text("Our Picks")
                }

                NavigationLink(destination: LocationsView()) {
                    Text("Vacation Map")
                }

                NavigationLink(destination: TipsView()) {
                    Text("Tips")
                }
            }
            .navigationTitle("Journeys")
            .listStyle(SidebarListStyle())

            DiscoverView(location: locations.primary)
        }
    }
}

struct SidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
        SidebarNavigation()
    }
}
