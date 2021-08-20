//
//  PicksView.swift
//  Journeys
//
//  Created by Paul Hudson on 06/07/2020.
//

import SwiftUI

struct PicksView: View {
    @EnvironmentObject var locations: Locations

    let columns = [
        GridItem(.adaptive(minimum: 180))
    ]

    var body: some View {
        ScrollView {
            TabView {
                ForEach(1..<9) { picture in
                    GeometryReader { geo in
                        Image("photo\(picture)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geo.size.width)
                            .clipped()
                    }
                }
            }
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))


            LazyVGrid(columns: columns, alignment: .center, spacing: 0) {
                ForEach(locations.places) { place in
                    NavigationLink(destination: DiscoverView(location: place)) {
                        PlaceView(location: place)
                    }
                }
            }


        }
        .background(Color(white: 0.95))
        .navigationTitle("Our Top Picks")
    }
}

struct PicksView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PicksView()
        }
        .environmentObject(Locations())
    }
}
