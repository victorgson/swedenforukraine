//
//  NavigationBarModifier.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-07.
//

import SwiftUI

struct NavigationBarModifier: ViewModifier {
    var text: String
    var icon: String
    
    var navigationAppearance: UINavigationBarAppearance = {
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithTransparentBackground()
        navigationAppearance.backgroundColor = .clear
        
        navigationAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        return navigationAppearance
    }()
    
    var standardAppearance: UINavigationBarAppearance = {
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithTransparentBackground()
        navigationAppearance.backgroundColor = UIColor(Color.blue)
        
        navigationAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        return navigationAppearance
    }()
    
    init(text: String, icon: String) {
        self.text = text
        self.icon = icon
        
        UINavigationBar.appearance().standardAppearance = standardAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = standardAppearance
        
        
    }
    func body(content: Content) -> some View {
        content
            .navigationTitle(text)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: icon).resizable().frame(width: 25, height: 25).padding()
                    }.frame(width: 44, height: 44).buttonStyle(.plain).foregroundColor(.white)
                }
                
            }
            .toolbarBackground(Color.yellow, for: .tabBar)
    }
}

extension View {
    func navigationBar(with text: String, icon: String) -> some View {
        modifier(NavigationBarModifier(text: text, icon: icon))
    }
}
