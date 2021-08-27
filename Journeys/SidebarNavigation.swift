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
                    Label("Discover", systemImage: "airplane.circle.fill")
                }

                NavigationLink(destination: PicksView()) {
                    Label("Our Picks", systemImage: "mappin")
                }

                NavigationLink(destination: LocationsView()) {
                    Label("Vacation Map", systemImage: "map.fill")
                }

                NavigationLink(destination: TipsView()) {
                    Label("Tips", systemImage: "list.bullet.rectangle")
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
