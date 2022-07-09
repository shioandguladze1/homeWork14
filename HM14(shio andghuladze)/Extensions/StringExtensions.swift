//
//  StringExtensions.swift
//  HM14(shio andghuladze)
//
//  Created by IMAC on 09.07.22.
//

import Foundation

extension String{
    
    func isSecure(preferredCount: Int)-> Bool{
        return self.count >= preferredCount && self.containsUpperCase() && self.containsDigit()
    }
    
    func containsUpperCase()-> Bool{
        return self.contains { c in
            c.isUppercase
        }
    }
    
    func containsDigit()-> Bool{
        return self.contains { c in
            c.isNumber
        }
    }
    
}
