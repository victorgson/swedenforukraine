//
//  AboutView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-08.
//

import SwiftUI

struct AboutView: View {
    
    var body: some View {
        ScrollView {
            Group {
                Text("For Ukraine").font(.title).bold()
                Group {
                    Text(Localize.about_text.string)

                }.padding()
            }.frame(maxWidth: .infinity, alignment: .center).foregroundColor(.white)
        }.background(theme: .ukraine)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
