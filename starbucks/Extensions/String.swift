//
//  String.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import Foundation

extension String {
    
    
    func characterAtIndex(index: Int) -> Character?{
      
        var cur = 0
        for char in self {
            if cur == index {
                return char
            }
            cur = cur + 1
        }
        return nil
    }
    
    func isEmail()-> Bool{
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        return NSPredicate(format: "SELF MATCHES %@", regEx).evaluate(with: self)
    }
}
