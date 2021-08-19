//
//  ThumbnailsView.swift
//  ThumbnailsView
//
//  Created by Robert DeLaurentis on 8/19/21.
//

import SwiftUI

struct ThumbnailsView: View {
    let location: Location

    var body: some View {
        // added in video
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(location.pictures, id: \.self) { picture in
                    Image("\(picture)-thumb")
                        .resizable()
                        .frame(width: 150)
                        .clipShape(RoundedRectangle(cornerRadius:  16))
                }
            }
            .frame(height: 100)
            .padding([.horizontal, .bottom], 20 )
            // add end
        }
    }
}

struct ThumbnailsView_Previews: PreviewProvider {

    static var previews: some View {
        ThumbnailsView(location: Location.example).previewLayout(.sizeThatFits)
    }
}
