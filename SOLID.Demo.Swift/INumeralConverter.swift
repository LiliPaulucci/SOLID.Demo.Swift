//
//  INumeralConverter.swift
//  SOLID.Demo.Swift
//
//  Created by Aline Cristina Paulucci Cruz on 14/09/17.
//  Copyright © 2017 A4Tecnologia. All rights reserved.
//

import Foundation

protocol INumeralConverter {
    func Convert(numeral: String) -> String
}

enum NotSupportedException : Error {
    case RuntimeError(String)
}

class ArabicToCardinalConverter : INumeralConverter
{
    private let _translator: ITranslator
    
    init(translator: ITranslator) {
        self._translator = translator
    }
    
    func Convert(numeral : String)  -> String
    {
        let number = Int(numeral)
        
        if number! < 0 || number! > 99 {
            //throw NotSupportedException.RuntimeError("Numbers should be Integers between 0 and 99.")
            return ""
        }
        
        let OutcomeNumber : String
    
        if MathUtils.IsATen(IncomeNumber: number!){
            OutcomeNumber = _translator.GetTens(position: MathUtils.GetQuotientOfDivisionBy10(IncomeNumber: number!))
        } else if number! < 20 {
            OutcomeNumber = _translator.GetUnits(position: number!)
        } else {
            let Ten = MathUtils.GetQuotientOfDivisionBy10(IncomeNumber: number!)
            let Remainder = MathUtils.GetRemainderOfDivisionBy10(IncomeNumber: number!)
            
            OutcomeNumber = _translator.GetTens(position: Ten) + " " + _translator.GetUnits(position: Remainder)
        }
    
        return OutcomeNumber
    }
}

class RomanToCardinalConverter : INumeralConverter
{
    private let _translator: ITranslator
    
    init(translator: ITranslator) {
        self._translator = translator
    }
    
    func  Convert(numeral : String)  -> String
    {
        //throw NotSupportedException.RuntimeError("Roman numerals are not supported yet.")
        return ""
    }
}
