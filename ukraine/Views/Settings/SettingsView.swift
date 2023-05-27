//
//  SettingsView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.openURL) private var openURL
    var body: some View {
        ZStack {
            List {
                Section(Localize.settings.string) {
                    NavigationLink(Localize.about.string) {
                        AboutView()
                    }
                    Text(Localize.contact.string)
                        .onTapGesture {
                            openURL(AppConstants.emailTo)
                        }
                    Text(Localize.privacy_policy.string)
                        .onTapGesture {
                            openURL(AppConstants.privacyPolicyURL)
                        }
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(theme: .ukraine)    
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
