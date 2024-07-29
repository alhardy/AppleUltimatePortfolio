//
//  NumberBadge.swift
//  UltimatePortfolio
//
//  Created by Paul Hudson on 14/05/2024.
//

import SwiftUI

extension View {
    func numberBadge(_ number: Int) -> some View {
        #if os(watchOS)
        self
        #else
        self.badge(number)
        #endif
    }
}
