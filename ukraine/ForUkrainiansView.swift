//
//  ContentView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

struct ForUkrainiansView: View {
    
    let linearGradient = LinearGradient(colors: [.blue, .yellow], startPoint: .top, endPoint: .bottom)
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(showsIndicators: false) {
                    HeaderView()
                    TopicScrollView()
                    CommunityScrollView()
                    EmergencyListView()
                }
            }.background(linearGradient)
        }
        }
    }

struct ForUkrainiansView_Previews: PreviewProvider {
    static var previews: some View {
        ForUkrainiansView()
    }
}

extension View {

}
