//
//  TextLoader.swift
//  MOTD Test
//
//  Created by mac user on 4/20/18.
//  Copyright © 2018 mac user. All rights reserved.
//

import Foundation
let linkyface = URL(string: "https://1amnick.net/messages/version.txt")
let linkybutt = URL(string: "https://1amnick.net/messages/messages.txt")
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
func downloadLatestMessageList(){
    print("Downloading latest...")
    
    
}
func checkForDupe(){
    //todo check to see if the yesterdays message happens to be todays too
}
func checkUpdate() {
    do{
        var currentVersionText = try String(contentsOf: linkyface!)
        sleep(1)
        currentVersionText.removeLast(1)
        let currentVersion = Double(currentVersionText)!
        let myversion = 0.00
        if myversion < currentVersion{
            print(myversion , "is <" , currentVersion , "need to update.")
            downloadLatestMessageList()
        }else{
        print(myversion , " is the latest.")
        }
    }catch{
        //do nothing
    }
}






