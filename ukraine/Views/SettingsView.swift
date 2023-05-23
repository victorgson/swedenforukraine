//
//  SettingsView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import SwiftUI

struct SettingsView: View {
    
    //TODO: Extract to viewModel
    @Environment(\.openURL) private  var openURL
    let url = URL(string: "https://www.apple.com")
    let email = URL(string: "message://")
    
    var body: some View {
        ZStack {
            List {
                Section(Localize.settings.string) {
                    NavigationLink(Localize.about.string) {
                        AboutView()
                    }
                    Text(Localize.contact.string)
                        .onTapGesture {
                            openURL(URL(string: "mailto:victorgson@icloud.com")!)
                        }
                    Text(Localize.privacy_policy.string)
                        .onTapGesture {
                            openURL(url!)
                        }
                    Text(Localize.terms_and_condition.string)
                        .onTapGesture {
                            openURL(url!)
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
