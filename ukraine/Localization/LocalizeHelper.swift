//
//  LocalizeHelper.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-12.
//

import Foundation

enum Localize: String {
    case welcome
    case ukrainian_communities
    case phonenumbers
    case general
    case jobs
    case language
    case housing
    case healthcare
    case parents
    case about
    case contact
    case privacy_policy
    case terms_and_condition
    case emergency
    case not_emergency
    case medical
    case for_ukrainians
    case for_swedes
    case settings
    case donate
    case housing_ukrainians
    case volunteer
}

extension Localize {

    /// Used when string is expected
    var string: String {
        return NSLocalizedString(rawValue, comment: "")
    }

    /// Used when string is expected with argument
    func string(_ argument: CVarArg) -> String {
        return String(format: string, argument)
    }

    /// Used when string is expected with arguments
    func string(_ arguments: [CVarArg]) -> String {
        return String(format: string, arguments: arguments)
    }
}
