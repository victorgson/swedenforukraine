//
//  TopicDetailSectionView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-06.
//

import SwiftUI

struct TopicDetailSectionView: View {
    var topic: SubTopicModel
    @ObservedObject var viewModel: WebViewModel
    
    var body: some View {
        Section(topic.title) {
            VStack {
                
                if let imageUrl = topic.imageUrl {
                    AsyncImage(url: URL(string: imageUrl), content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 200, maxHeight: 200)
                        
                    }, placeholder: {
                        ProgressView()
                    })
                }
         
                
   
                Spacer()
                Text(topic.description).frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                NavigationLink("Website"){
                    
                    WebView(url: topic.url, urlType: topic.urlType, viewModel: viewModel)
            
                    WebViewNavigationBar(viewModel: viewModel)
                }
            }
            
        }.shadow(radius: -20)
    }
}

//struct TopicDetailSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopicDetailSectionView(topic: SubTopicModel(id: 1, title: "asd", url: "", description: "asd", imageUrl: ""), viewModel: WebViewModel())
//    }
//}
