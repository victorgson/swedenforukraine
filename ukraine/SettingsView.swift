//
//  SettingsView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            List {
                Section("About the app") {
                    Text("About")
                    Text("Feedback")
                    Text("Privacy policy")
                    Text("Terms & Conditions")
                }
            }
        }.scrollContentBackground(.hidden)
            .background(theme: .ukraine)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
