//
//  InlineNavigationBar.swift
//  UltimatePortfolio
//
//  Created by Paul Hudson on 14/05/2024.
//

import SwiftUI

extension View {
    func inlineNavigationBar() -> some View {
        #if os(macOS)
        self
        #else
        self.navigationBarTitleDisplayMode(.inline)
        #endif
    }
}
