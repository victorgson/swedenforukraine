//
//  SettingsView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import SwiftUI

enum Language: String {
    case Ukrainian, Swedish, English
}

struct SettingsView: View {
    
    let lang: [Language] = [.Ukrainian, .Swedish, .English ]
    
    @Environment(\.openURL) private  var openURL
    let url = URL(string: "https://www.apple.com")
    let email = URL(string: "message://")
    
    @State var selectedLanguage : Language = .Ukrainian
    
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
                
                Section("Language") {
                    Picker("Language", selection: $selectedLanguage) {
                        ForEach(lang, id: \.self) { language in
                            Text(language.rawValue)
                        }
                    }.pickerStyle(.segmented)
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
