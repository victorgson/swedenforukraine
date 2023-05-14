//
//  EmergencyScrollView.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import SwiftUI

struct EmergencyListView: View {
    @ObservedObject var emergencyNumberViewModel = EmergencyNumberListViewModel()
    var body: some View {
        Section(content: {
            Text(Localize.phonenumbers.string).font(.body).foregroundColor(.white).fontWeight(.bold)
        }, footer: {
            ForEach(emergencyNumberViewModel.emergencyNumberViewModel) { emergencyNumberViewModel in
                Button {
                    guard let number = URL(string: "tel://\(emergencyNumberViewModel.emergencyNumber.phoneNumber)") else { return }
                    UIApplication.shared.open(number)
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).frame(maxWidth: .infinity).foregroundColor(.blue).opacity(0.8).shadow(radius: 5)
                        HStack {
                            Text(LocalizedStringKey( emergencyNumberViewModel.emergencyNumber.title)).font(.headline).fontWeight(.bold).padding().foregroundColor(.white)
                            Spacer()
                            Image(systemName: "phone.fill").padding(.trailing, 10).foregroundColor(.white)
                        }
                    }.padding(.horizontal, 10).padding(.top, 5)
                }
            }
        })
    }
}


//
//struct Previews_EmergencyListView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmergencyListView(emergencyNumberViewModel: EmergencyNumberListViewModel())
//    }
//}
