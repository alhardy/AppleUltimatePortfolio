//
//  DataController-Testing.swift
//  UltimatePortfolio
//
//  Created by Paul Hudson on 14/05/2024.
//

import SwiftUI

extension DataController {
    func checkForTestEnvironment() {
        #if DEBUG
        if CommandLine.arguments.contains("enable-testing") {
            self.deleteAll()
            #if os(iOS)
            UIView.setAnimationsEnabled(false)
            #endif
        }
        #endif
    }
}
