//
//  AdvisoryView.swift
//  AdvisoryView
//
//  Created by Robert DeLaurentis on 8/20/21.
//

import SwiftUI

struct AdvisoryView: View {
    @State private var disclosureShowing = false

    let location: Location

    var body: some View {
        VStack {
            if location.advisory.isEmpty {
                DisclosureGroup("Advisories", isExpanded: $disclosureShowing) {
                    Text(location.advisory)
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation {
                        disclosureShowing.toggle()
                    }
                }
            }
        }
    }
}

struct AdvisoryView_Previews: PreviewProvider {
    static var previews: some View {
        AdvisoryView(location: Location.example)
    }
}
