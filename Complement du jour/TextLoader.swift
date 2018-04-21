//
//  TextLoader.swift
//  MOTD Test
//
//  Created by mac user on 4/20/18.
//  Copyright © 2018 mac user. All rights reserved.
//

import Foundation

func GetRandomTextLine() -> String{

    if let file = Bundle.main.path(forResource: "messages", ofType: "txt"){
        do{
            let text = try String(contentsOfFile: file)
            //print(text)
            var array = text.components(separatedBy: "\n")
            let count = array.count
            let random = arc4random_uniform(UInt32(count - 1))
            let words = array[Int(random)]
            print(random)
            return words
            
        }catch{
        }
    }
    return "ERROR Did not find messages.txt"
}

