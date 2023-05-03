//
//  ForSwedesView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-02.
//

import SwiftUI

struct ForSwedesView: View {
    
    @ObservedObject var topicForSwedes = TopicForSwedesListViewModel()
    
    let columns = [GridItem(.adaptive(minimum: 100)), GridItem(.adaptive(minimum: 100))]
    let linearGradient = LinearGradient(colors: [.blue, .yellow, .blue], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        NavigationView {
            VStack{
                ScrollView {
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
                    
                    LazyVGrid(columns: columns) {
                        ForEach(topicForSwedes.topicViewModels) { topicViewModel in
                            TopicCardView(topicViewModel: topicViewModel)
                        }
                    }
                    
                }
            }.background(linearGradient)
         
        }
    }
}
            
            

struct ForSwedesView_Previews: PreviewProvider {
    static var previews: some View {
        ForSwedesView()
    }
}
