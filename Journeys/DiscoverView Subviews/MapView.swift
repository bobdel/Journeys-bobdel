//
//  MapView.swift
//  MapView
//
//  Created by Robert DeLaurentis on 8/19/21.
//

import MapKit
import SwiftUI

struct MapView: View {
    let location: Location

    @State private var region: MKCoordinateRegion

    init(location: Location) {
        self.location = location
        _region = State(
            wrappedValue: MKCoordinateRegion(
                center: location.coordinate,
                span: MKCoordinateSpan( latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        )
    }

    let manager = CLLocationManager()

    var body: some View {
        VStack {
            Map(coordinateRegion: $region, interactionModes: [])
                .aspectRatio(2, contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.secondary.opacity(0.5), lineWidth: 2)
                )
            Text("\(location.name)")
        }
        .padding(.bottom, 16)
        .onAppear {
            manager.requestWhenInUseAuthorization()
        }

    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(location: Location.example).previewLayout(.sizeThatFits)
    }
}
