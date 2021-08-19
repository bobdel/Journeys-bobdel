//
//  CountryHeaderView.swift
//  CountryHeaderView
//
//  Created by Robert DeLaurentis on 8/19/21.
//

import SwiftUI

struct CountryHeaderView: View {
    let location: Location

    var body: some View {
        HStack {
            Text(location.country)
                .font(.title)
                .bold()

            Spacer()

            Button {
                print("Bookmarked")
            } label: {
                Image(systemName: "heart")
                    .font(.title)
                    .padding(20)
                    .background(Circle().fill(Color.white))
                    .shadow(radius: 10)
            }
            .offset(y: -40)
        }
        .padding(.horizontal, 20)
    }
}


struct CountryHeaderView_Previews: PreviewProvider {

    static var previews: some View {
        CountryHeaderView(location: Location.example).previewLayout(.sizeThatFits)
    }
}
