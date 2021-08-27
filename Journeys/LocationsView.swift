//
//  LocationsView.swift
//  LocationsView
//
//  Created by Robert DeLaurentis on 8/20/21.
//

import MapKit
import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var locations: Locations
    @ScaledMetric var annotationSize: CGFloat = 80.0

    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) { location in
            MapAnnotation(coordinate: location.coordinate) {
                NavigationLink(destination: DiscoverView(location: location)) {
                    Image(location.country)
                        .renderingMode(.original)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 4)
                        )
                        .frame(width: max(80, annotationSize), height: max(40, annotationSize / 2))
                }
            }
        }
        .navigationTitle("Vacation Map")
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationsView()
        }
        .environmentObject(Locations())
    }
}
