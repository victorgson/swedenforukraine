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
    
    let dataManager: DataManager
    init() {
        FirebaseApp.configure()
        self.dataManager = DataManager()
    }
    

    
    
    
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView().environmentObject(dataManager)
                    .tabItem {
                        Label("For Ukrainians", systemImage: "tray.and.arrow.down.fill")
                    }
            
                ContentView().environmentObject(dataManager)
                    .tabItem {
                        Label {
                            Text("For Swedes 🇸🇪").font(.title)
                        } icon: {
//                            Text("For Swedes 🇸🇪")
                        }

                    }
            }.tabViewStyle(.automatic)
   
        }
    }
}
