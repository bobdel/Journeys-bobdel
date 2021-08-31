//
//  ThumbnailsView.swift
//  ThumbnailsView
//
//  Created by Robert DeLaurentis on 8/19/21.
//

import SwiftUI

struct ThumbnailsView: View {
    var namespace: Namespace
    @Binding var selectedPicture: String?
    
    let location: Location
    
    var body: some View {
        // added in video
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(location.pictures, id: \.self) { picture in
                    if selectedPicture == picture {
                        Color.clear.frame(width: 150)
                    } else {
                        Image("\(picture)-thumb")
                            .resizable()
                            .frame(width: 150)
                            .clipShape(RoundedRectangle(cornerRadius:  16))
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.9)) {
                                    selectedPicture = picture
                                }
                            }
                            .matchedGeometryEffect(id: picture, in: namespace.wrappedValue)
                    }
                }
            }
            .frame(height: 100)
            .padding([.horizontal, .bottom], 20 )
            // add end
        }
    }
}

//struct ThumbnailsView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        ThumbnailsView(location: Location.example).previewLayout(.sizeThatFits)
//    }
//}
