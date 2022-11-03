//
//  Double.swift
//  CryptoBoss
//
//  Created by Mariusz Zając on 03/11/2022.
//

import Foundation
extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
   private var numberFormater: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    
    func toPercentage() -> String {
        return numberFormater.string(for: self)! + "%" 
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "0.00"
    }
}
