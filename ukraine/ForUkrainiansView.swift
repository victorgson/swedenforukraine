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
                    TopicScrollView()
                    CommunityScrollView()
                    EmergencyListView()
                }
            }.background(linearGradient).toolbar {
                ToolbarItem(placement: .automatic) {
                    HeaderView()
                }
                
            }.toolbarBackground(Color.blue, for: .navigationBar).toolbarBackground(Color.yellow, for: .tabBar)
            
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
