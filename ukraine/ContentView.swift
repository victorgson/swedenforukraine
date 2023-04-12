//
//  ContentView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    
    var colors: [Color] = [.blue, .green, .red, .orange]
    var items = [GridItem(.flexible(minimum: 100, maximum: 180), spacing: 16), GridItem(.flexible(minimum: 100, maximum: 180), spacing: 16)]
    var communityItems = [GridItem(.fixed(180))]
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(showsIndicators: false) {
                    Text("Welcome👋🇺🇦🇸🇪!")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: items, alignment: .center) {
                            ForEach(Array(dataManager.topics.enumerated()), id: \.offset) { index, item in
                                NavigationLink(destination: TopicDetailView(topic: item.subTopics)) {
                                    ZStack{
                                        AsyncImage(url: URL(string: "https://picsum.photos/180/180")) { image in
                                            image.opacity(0.8).aspectRatio(contentMode: .fit).frame(minWidth: 100, maxWidth: 180, minHeight: 100, maxHeight: 180)
                                        } placeholder: {
                                            ProgressView()
                                        }.cornerRadius(10).shadow(radius: 10)
                                        Text(item.title).font(.title).fontWeight(.bold).foregroundColor(.white)
                                    }
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }.padding(.horizontal)
                    }
                    Section("Ukrainian Communitys in Sweden") {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: communityItems) {
                                ForEach(dataManager.communities) { community in
                                    ZStack{
                                        AsyncImage(url: URL(string: "https://picsum.photos/180/180")) { image in
                                            image.opacity(0.8)
                                        } placeholder: {
                                            ProgressView()
                                        }.cornerRadius(10).shadow(radius: 10)
                                        Text(community.title).font(.title).fontWeight(.bold).foregroundColor(.white)
                                    }
                                }
                            }.padding(.horizontal)
                        }
                    }
                    Section("Phone numbers") {
                        LazyVGrid(columns: items) {
                            ForEach(dataManager.emergencyNumbers) { emergencyNumber in
                                Button {
                                    UIApplication.shared.open(URL(string: "tel:11414")!)
                                } label: {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10).frame(width: 180, height: 180).foregroundColor(.white).shadow(radius: 5)
                                        Text(emergencyNumber.title).font(.title).fontWeight(.bold)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(dataManager: EnvironmentObject(DataManager()))
//    }
//}
