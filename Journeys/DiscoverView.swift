//
//  DiscoverView.swift
//  Journeys
//
//  Created by Paul Hudson on 06/07/2020.
//

import AVKit
import MapKit
import SwiftUI
import VisualEffects

struct DiscoverView: View {
    @Namespace var namespace
    @State private var selectedPicture: String?

    let location: Location

    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .top) {
                Image(location.heroPicture)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: geo.size.width)
                    .frame(height: geo.size.height * 0.7)

                ScrollView(showsIndicators: false) {
                    Spacer().frame(height: geo.size.height * 0.35)

                    HeaderTextView(location: location)
                    .padding(.horizontal, 20)

                    VStack(alignment: .leading, spacing: 0) {

                        CountryHeaderView(location: location)

                        ThumbnailsView(namespace: _namespace, selectedPicture: $selectedPicture, location: location)

                        DescriptionView(location: location)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 50)

                        MapView(location: location)
                            .padding(.horizontal, 20)

                        AdvisoryView(location: location)
                            .padding(.horizontal, 40)
                            .padding(.bottom, 50)

                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("Background"))
                    )
                }

                // overlay
                if let picture = selectedPicture {
                    OverlayView(selectedPicture: $selectedPicture, namespace: _namespace, picture: picture)
                }
            }
        }
        .background(Color("Background"))
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView(location: Location.example)
    }
}
