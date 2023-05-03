//
//  HeaderView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-03.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Welcome👋🇺🇦🇸🇪!")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
    
            NavigationLink {
                SettingsView()
            } label: {
                Image(systemName: "gearshape.fill").resizable().frame(width: 25, height: 25).padding()
            }.frame(width: 44, height: 44).padding().buttonStyle(.plain)
            }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
