//
//  SmartFilterRow.swift
//  UltimatePortfolio
//
//  Created by Paul Hudson on 21/05/2023.
//

import SwiftUI

struct SmartFilterRow: View {
    var filter: Filter

    var body: some View {
        NavigationLink(value: filter) {
            Label(LocalizedStringKey(filter.name), systemImage: filter.icon)
        }
    }
}

struct SmartFilterRow_Previews: PreviewProvider {
    static var previews: some View {
        SmartFilterRow(filter: .all)
    }
}
