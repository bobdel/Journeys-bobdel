//
//  ContentView.swift
//  ContentView
//
//  Created by Robert DeLaurentis on 8/26/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var sizeClass

    var body: some View {
        if sizeClass == .compact {
            TabNavigationView()
        } else {
            SidebarNavigation()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Locations())

    }
}
