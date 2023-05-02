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
                    HStack {
                        Text("Welcome👋🇺🇦🇸🇪!")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                
                        NavigationLink {
                            ProgressView()
                        } label: {
                            Image(systemName: "gearshape.fill").resizable().frame(width: 25, height: 25).padding()
                        }.frame(width: 44, height: 44).padding().buttonStyle(.plain)
                        }

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
