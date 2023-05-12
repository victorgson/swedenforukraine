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
                    NavigationView {
                        ForUkrainiansView().background(theme: .ukraine).navigationBar(with: Localize.welcome.string, icon: "gearshape.fill")
                    }.tint(.white)
                        .tabItem {
                            Label {
                                Text(Localize.for_ukrainians.string).font(.title).foregroundColor(.white)
                            } icon: {
                                Image("UA-flag")
                                
                            }
                        } 
                    NavigationView {
                        ForSwedesView().background(theme: .ukraine).navigationBar(with: Localize.welcome.string, icon: "gearshape.fill")
                    }.tint(.white)
                        .tabItem {
                            Label {
                                Text(Localize.for_swedes.string).font(.title).foregroundColor(.white)
                            } icon: {
                                Image("SE-flag")
                            }
                            
                        }
            }.tabViewStyle(.automatic)
        }
    }
}
