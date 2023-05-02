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
                ForUkrainiansView()
                    .tabItem {
                        Label {
                            Text("For Ukrainians").font(.title)
                        } icon: {
                            Image("UA-flag")
                        
                        }
                    }
                        
            
                ForSwedesView()
                    .tabItem {
                        Label {
                            Text("For Swedes").font(.title)
                        } icon: {
                            Image("SE-flag")
                        }

                    }
            }.tabViewStyle(.automatic)
   
        }
    }
}
