//
//  PlaceView.swift
//  PlaceView
//
//  Created by Robert DeLaurentis on 8/20/21.
//

import SwiftUI

struct PlaceView: View {
    let location: Location

    var body: some View {
        VStack {
            Image(location.country)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))

            Text(location.name)
                .font(.title3)
            Text(location.country)
                .foregroundColor(.secondary)
                .font(.subheadline)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
        )
        .shadow(color: Color.black.opacity(0.2), radius: 10)
        .padding()
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView(location: Location.example)
    }
}
