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
        if location.advisory.isEmpty == false {
            DisclosureGroup {
                Text(location.advisory)
            } label: {
                Text("Travel advisories")
                    .font(.headline)
            }
            .padding(.top)
        }
    }
}

struct AdvisoryView_Previews: PreviewProvider {
    static var previews: some View {
        AdvisoryView(location: Location.example)
    }
}
