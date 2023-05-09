//
//  LocalizeFormattedString.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 07.05.2023.
//

import Foundation

enum Gender: Int {
    case female
    case male
    case male_alt
}

func localized(key: String, _ argument: String? = nil) -> String {
    guard let argument = argument  else { return String(NSLocalizedString(key, comment: "")) }
    return String(format: NSLocalizedString(key, comment: ""), arguments: [argument])
}

func gender_localized(key: String, gender: Gender) -> String {
    String.localizedStringWithFormat(NSLocalizedString("\(key)_%d", comment: ""), gender.rawValue)
}
