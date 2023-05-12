//
//  BackgroundModifier.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-07.
//

import SwiftUI

enum Theme {
    case sweden, ukraine
    var backgroundColor: LinearGradient {
        switch self {
        case .sweden:
            return LinearGradient(colors: [.blue, .yellow, .blue], startPoint: .top, endPoint: .bottom)
        case .ukraine:
            return LinearGradient(colors: [.blue, .yellow], startPoint: .top, endPoint: .bottom)
        }
    }
}

struct AppThemeModifier: ViewModifier {
    var theme: Theme = .ukraine
    func body(content: Content) -> some View {
        content
            .background(theme.backgroundColor)
    }
}

extension View {
    func background(theme: Theme) -> some View {
        modifier(AppThemeModifier(theme: theme))
    }
}

