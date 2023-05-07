//
//  ContentView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

struct ForUkrainiansView: View {
    @State private var showingSheet = false
    var body: some View {
            VStack {
                ScrollView(showsIndicators: false) {
                    TopicScrollView()
                    CommunityScrollView()
                    EmergencyListView()
                }
            }.background(theme: .ukraine)
    }
}

struct ForUkrainiansView_Previews: PreviewProvider {
    static var previews: some View {
        ForUkrainiansView()
    }
}

