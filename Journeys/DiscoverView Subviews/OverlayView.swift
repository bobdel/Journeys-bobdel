//
//  OverlayView.swift
//  OverlayView
//
//  Created by Robert DeLaurentis on 8/30/21.
//

import SwiftUI
import VisualEffects


struct OverlayView: View {

    @Binding var selectedPicture: String?

    var namespace: Namespace
    let picture: String

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                ZStack(alignment: .topTrailing) {
                    Image(picture)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: .infinity)
                        .matchedGeometryEffect(id: picture, in: namespace.wrappedValue)

                    Button {
                        withAnimation {
                            selectedPicture = nil
                        }
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .padding(1)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                    .padding()
                    .offset(x: -10, y: 30)

                }

                Text("Important title")
                    .font(.title)
                    .bold()
                    .padding([.top, .horizontal])

                Text("This is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text this is some text")
                    .font(.title3)
                    .padding(.horizontal)
            }
        }
        .background(
            VisualEffectBlur(blurStyle: .systemThinMaterial)
        )
        .zIndex(50)
    }
}

//struct OverlayView_Previews: PreviewProvider {
//    static var previews: some View {
//        OverlayView()
//    }
//}
