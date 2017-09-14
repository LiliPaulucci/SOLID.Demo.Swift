//
//  MathUtils.swift
//  SOLID.Demo.Swift
//
//  Created by Aline Cristina Paulucci Cruz on 14/09/17.
//  Copyright © 2017 A4Tecnologia. All rights reserved.
//

import Foundation

class MathUtils {
    static func IsATen(IncomeNumber: Int) -> Bool
    {
        return IncomeNumber % 10 == 0;
    }
    
     static func  GetRemainderOfDivisionBy10(IncomeNumber: Int) -> Int
     {
        return IncomeNumber % 10;
    }
    
     static func  GetQuotientOfDivisionBy10(IncomeNumber: Int) -> Int
     {
        return IncomeNumber / 10;
    }
}
