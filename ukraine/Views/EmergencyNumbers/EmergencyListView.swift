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
        Section("Phone numbers") {
            ForEach(emergencyNumberViewModel.emergencyNumberViewModel) { emergencyNumberViewModel in
                Button {
                    
                    guard let number = URL(string: "tel://\(emergencyNumberViewModel.emergencyNumber.phoneNumber)") else { return }
                    
                    UIApplication.shared.open(number)
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10).frame(maxWidth: .infinity).foregroundColor(.white).shadow(radius: 5)
                        HStack {
                            Text(emergencyNumberViewModel.emergencyNumber.title).font(.headline).fontWeight(.bold).padding()
                            Spacer()
                            Image(systemName: "phone.fill").padding(.trailing, 10)   
                        }
                    }.padding(.horizontal, 10).padding(.top, 5)
                }
            }
        }
    }
}



struct Previews_EmergencyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyListView(emergencyNumberViewModel: EmergencyNumberListViewModel())
    }
}
