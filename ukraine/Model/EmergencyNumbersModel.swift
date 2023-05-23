//
//  EmergencyNumberModel.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-04-16.
//

import Foundation
struct EmergencyNumbersModel: Codable, Identifiable {
    var id: Int
    var title: String
    var phoneNumber: String
    
    enum CodingKeys: CodingKey {
        case id
        case title
        case phoneNumber
    }
}
