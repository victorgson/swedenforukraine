//
//  AboutView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-08.
//

import SwiftUI

struct AboutView: View {
    
// TODO: FIX
    let textOne: String = """
 For Ukraine is authored by Victor Gustafsson as a final project at IT-Högskolan in Gothenburg. The app wouldn't been possible without help from Yuliia Kyzyk.
"""
    let textTwo = """
 As a Swedish citizen, we often take for granted all the instituions a refugee, immigrant or asylum seeker has to go through. This was something that my girlfriend Yuliia shined a light on, and when I got the opportunity to develop an app as a final project before my graduation I knew what to do.
 The app gathers all the most useful links that can be helpful in one place.
 """
    var body: some View {
        ScrollView {
            Group {
                Text("For Ukraine").font(.title).bold()
                Group {
                    Text(textOne + textTwo)

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
