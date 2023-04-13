//
//  AppDelegate.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-12.
//

import Foundation
import UIKit
import SwiftUI
import FirebaseCore
import FirebaseFirestore

class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        
        
        return true
    }
}
