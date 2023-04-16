//
//  ContentView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var delegate: AppDelegate
    @ObservedObject var topicListViewModel = TopicListViewModel()
    @ObservedObject var communityListViewModel = CommunityListViewModel()
    @ObservedObject var emergencyNumberViewModel = EmergencyNumberListViewModel()
    
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
                            ForEach(topicListViewModel.topicViewModels) { topicViewModel in
                                
                                NavigationLink(destination: TopicDetailView(topic: topicViewModel.topic.subTopics)) {
                                    ZStack{
                                        AsyncImage(url: URL(string: topicViewModel.topic.imageUrl)) { image in
                                            image.opacity(0.8).aspectRatio(contentMode: .fit).frame(minWidth: 100, maxWidth: 180, minHeight: 100, maxHeight: 180)
                                        } placeholder: {
                                            ProgressView()
                                        }.cornerRadius(10).shadow(radius: 10)
                                        Text(topicViewModel.topic.title).font(.title).fontWeight(.bold).foregroundColor(.white)
                                    }
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }.padding()
                            
                      
                        }
                        Section("Ukrainian Communitys in Sweden") {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHGrid(rows: communityItems) {
                                    ForEach(communityListViewModel.communityViewModel) { communityViewModel in
                                        ZStack{
                                            AsyncImage(url: URL(string: "https://picsum.photos/180/180")) { image in
                                                image.opacity(0.8)
                                            } placeholder: {
                                                ProgressView()
                                            }.cornerRadius(10).shadow(radius: 10)
                                            Text(communityViewModel.community.title).font(.title).fontWeight(.bold).foregroundColor(.white)
                                        }
                                    }
                                }.padding(.horizontal)
                            }
                        }
                        Section("Phone numbers") {
                            ForEach(emergencyNumberViewModel.emergencyNumberViewModel) { emergencyNumberViewModel in
                                Button {
                                    UIApplication.shared.open(URL(string: emergencyNumberViewModel.emergencyNumber.phoneNumber)!)
                                } label: {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10).frame(maxWidth: .infinity).foregroundColor(.white).shadow(radius: 5)
                                        HStack {
                                            Text(emergencyNumberViewModel.emergencyNumber.title).font(.headline).fontWeight(.bold).padding()
                                            Spacer()
                                            Image(systemName: "phone.fill").padding(.trailing, 10)
                                            
                                        }
                                        
                                    }.padding(5)
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
