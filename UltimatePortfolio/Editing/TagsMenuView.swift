//
//  TagsMenuView.swift
//  UltimatePortfolio
//
//  Created by Paul Hudson on 21/05/2023.
//

import SwiftUI

struct TagsMenuView: View {
    @EnvironmentObject var dataController: DataController
    @ObservedObject var issue: Issue

    var body: some View {
        #if os(watchOS)
        LabeledContent("Tags", value: issue.issueTagsList)
        #else
        Menu {
            // show selected tags first
            ForEach(issue.issueTags) { tag in
                Button {
                    issue.removeFromTags(tag)
                } label: {
                    Label(tag.tagName, systemImage: "checkmark")
                }
            }

            // now show unselected tags
            let otherTags = dataController.missingTags(from: issue)

            if otherTags.isEmpty == false {
                Divider()

                Section("Add Tags") {
                    ForEach(otherTags) { tag in
                        Button(tag.tagName) {
                            issue.addToTags(tag)
                        }
                    }
                }
            }
        } label: {
            Text(issue.issueTagsList)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .animation(nil, value: issue.issueTagsList)
        }
        #endif
    }
}

struct TagsMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TagsMenuView(issue: .example)
            .environmentObject(DataController(inMemory: true))
    }
}
