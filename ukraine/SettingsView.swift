//
//  SettingsView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section("About the app") {
                Text("About")
                Text("Feedback")
                Text("Privacy policy")
                Text("Terms & Conditions")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
