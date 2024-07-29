//
//  DetailView.swift
//  UltimatePortfolio
//
//  Created by Paul Hudson on 23/02/2023.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var dataController: DataController

    var body: some View {
        VStack {
            if let issue = dataController.selectedIssue {
                IssueView(issue: issue)
            } else {
                NoIssueView()
            }
        }
        .navigationTitle("Details")
        .inlineNavigationBar()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
