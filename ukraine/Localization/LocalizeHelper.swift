//
//  LocalizeHelper.swift
//  ukraine
//
//  Created by Victor Gustafsson on 2023-05-12.
//

import Foundation

enum Localize: String {
    case example
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
