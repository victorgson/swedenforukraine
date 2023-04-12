//
//  ukraineApp.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

@main
struct ukraineApp: App {
    
    let dataManager = DataManager()
    
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
