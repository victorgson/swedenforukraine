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
struct ukraineApp: App {
    
    //@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        FirebaseApp.configure()
    }
    

    
    
    
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("For Ukrainians", systemImage: "tray.and.arrow.down.fill")
                    }
            
                ContentView()
                    .tabItem {
                        Label {
                            Text("For Swedes 🇸🇪").font(.title)
                        } icon: {
                        }

                    }
            }.tabViewStyle(.automatic)
   
        }
    }
}
