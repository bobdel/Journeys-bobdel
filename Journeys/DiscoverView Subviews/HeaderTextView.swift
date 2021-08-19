//
//  HeaderTextView.swift
//  HeaderTextView
//
//  Created by Robert DeLaurentis on 8/19/21.
//

import SwiftUI

struct HeaderTextView: View {
    let location: Location
    
    var body: some View {
        HStack {
            Text(location.name)
                .font(.system(size: 48, weight: .bold))
                .bold()
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(1), radius: 5)
            
            Spacer()
        }
    }
}

struct HeaderTextView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderTextView(location: Location.example).previewLayout(.sizeThatFits)
    }
}
