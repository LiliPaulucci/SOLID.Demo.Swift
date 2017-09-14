//
//  CardinalConverter.swift
//  SOLID.Demo.Swift
//
//  Created by Aline Cristina Paulucci Cruz on 14/09/17.
//  Copyright © 2017 A4Tecnologia. All rights reserved.
//

import Foundation

class CardinalConverter {
    private let _numeralConverter: INumeralConverter
    
    init(numeralConverter: INumeralConverter) {
        self._numeralConverter = numeralConverter
    }
    
    
    func Convert(numeral: String)  -> String {
        
            return self._numeralConverter.Convert(numeral: numeral)
        
        
    }
    
}
