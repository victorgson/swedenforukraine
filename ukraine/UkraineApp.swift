//
//  ukraineApp.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI
import Firebase
import FirebaseFirestore

@main
struct UkraineApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            TabView {
                Group {
                    NavigationView {
                        ForUkrainiansView().navigationBar(with: "Welcome👋🇺🇦!", icon: "gearshape.fill")
                    }.tint(.white)
                        .tabItem {
                            Label {
                                Text("For Ukrainians").font(.title).foregroundColor(.white)
                            } icon: {
                                Image("UA-flag")
                                
                            }
                        }
                }
                Group {
                    NavigationView {
                        ForSwedesView().background(theme: .ukraine).navigationBar(with: "Welcome👋🇸🇪!", icon: "gearshape.fill")
                    }.tint(.white)
                        .tabItem {
                            Label {
                                Text("For Swedes").font(.title).foregroundColor(.white)
                            } icon: {
                                Image("SE-flag")
                            }
                            
                        }
                }
            }.tabViewStyle(.automatic)
        }
    }
}
