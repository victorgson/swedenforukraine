//
//  SettingsView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import SwiftUI

struct SettingsView: View {
    
    
    @Environment(\.openURL) private  var openURL
    let url = URL(string: "https://www.apple.com")
    let email = URL(string: "message://")
    
    var body: some View {
        ZStack {
            List {
                Section("About the app") {
                    NavigationLink("About") {
                        AboutView()
                    }
                    Text("Contact & Feedback")
                        .onTapGesture {
                            openURL(URL(string: "mailto:victorgson@icloud.com")!)
                        }
                    Text("Privacy policy")
                        .onTapGesture {
                            openURL(url!)
                        }
                    Text("Terms & Conditions")
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
