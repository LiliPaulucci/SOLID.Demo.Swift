//
//  ITranslator.swift
//  SOLID.Demo.Swift
//
//  Created by Aline Cristina Paulucci Cruz on 14/09/17.
//  Copyright © 2017 A4Tecnologia. All rights reserved.
//

import Foundation

protocol ITranslator
{
    func GetTens(position: Int) -> String
    func GetUnits(position: Int) -> String
}

class CardinalTranslator : ITranslator
{
    func GetTens(position: Int) -> String
    {
        var arrayOfTens = ["Zero", "Ten", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
        return arrayOfTens[position]
    }
    
    func GetUnits(position: Int) -> String
    {
        var arrayOfUnits = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eightteen", "Nineteen"]
        return arrayOfUnits[position]
    }
}
