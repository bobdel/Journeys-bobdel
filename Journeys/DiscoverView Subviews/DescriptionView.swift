//
//  DescriptionView.swift
//  DescriptionView
//
//  Created by Robert DeLaurentis on 8/19/21.
//

import SwiftUI

struct DescriptionView: View {
    let location: Location
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(location.description)
                .fixedSize(horizontal: false, vertical: true)

            Text("Don't miss")
                .font(.title3)
                .bold()
                .padding(.top, 20)

            Text(location.more)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(location: Location.example).previewLayout(.sizeThatFits)
    }
}
