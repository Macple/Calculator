//
//  StringHelperFunctions.swift
//  Calculator
//
//  Created by Maciej Plewko on 01/04/2023.
//

import Foundation

/// Returns last character if exists.
/// Otherwise returns an empty string.
func getLastChar(str: String) -> String {
    return str.isEmpty ? "" : String(str.last!)
}

/// Returns 'true' if last character of the string is equal to the given character.
/// Otherwise returns 'false'.
func lastCharacterIsEqualTo(str: String, char: String) -> Bool {
    let last = getLastChar(str: str)
    return last == char
}

/// Returns the given double value as a String
func formatResult(val: Double) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.maximumFractionDigits = 16

    return numberFormatter
        .string(
            from: NSNumber(value: val)) ?? "0"
}
