//
//  DynoWebsite.swift
//  Dyno
//
//  Created by Tariq Williams on 5/10/22.
//

import SwiftUI

struct DynoWebsite: View {
    var body: some View {
        NavigationView {
            SwiftUIWebView(url: URL(string: "https://www.dynodetroit.com"))
                .navigationBarHidden(true)
        }
    }
}

struct DynoWebsite_Previews: PreviewProvider {
    static var previews: some View {
        DynoWebsite()
    }
}
