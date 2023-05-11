//
//  ContentView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

struct ForUkrainiansView: View {
    var body: some View {
            VStack {
                ScrollView(showsIndicators: false) {
                    TopicScrollView()
                    CommunityScrollView()
                    EmergencyListView()
                }
            }.background(theme: .ukraine)
                .navigationBar(with: "Welcome👋🇺🇦!", icon: "gearshape.fill")
            }
    }

struct ForUkrainiansView_Previews: PreviewProvider {
    static var previews: some View {
        ForUkrainiansView()
    }
}

