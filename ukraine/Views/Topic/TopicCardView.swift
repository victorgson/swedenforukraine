//
//  TopicCardView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import SwiftUI

struct TopicCardView: View {
    
    @ObservedObject var topicViewModel: TopicViewModel
    var isWide: Bool = false
    var body: some View {
        NavigationLink(destination: TopicDetailView(topic: topicViewModel.topic.subTopics)) {
            if isWide {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(maxWidth: .infinity, idealHeight: 100).padding(.horizontal, 10).opacity(0.8).shadow(radius: 10)
                    Text(LocalizedStringKey( topicViewModel.topic.title)).font(.title).fontWeight(.bold).foregroundColor(.black)
                    
                }.padding(.top, 20)
            } else {
                ZStack{
                    Image(topicViewModel.topic.imageUrl).resizable().frame(width: 150, height: 120).aspectRatio(contentMode: .fill).cornerRadius(10).opacity(0.8)
                    Text(LocalizedStringKey(topicViewModel.topic.title)).font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .opacity(0.8)
                        .frame(width: 130)
                        .padding()
                        .minimumScaleFactor(0.5)
                        
                }
            }

        }.buttonStyle(PlainButtonStyle()).shadow(radius: 10)
    }
}

//struct TopicCardView_Previews: PreviewProvider {
//    static var previews: some View {
////        TopicCardView(topicViewModel: TopicViewModel(topic: TopicModel(id: 1, title: "asd", description: "asd", subTopics: [, imageUrl: <#T##String#>)))
//    }
//}
