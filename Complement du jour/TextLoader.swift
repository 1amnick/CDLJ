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
let fileName = "messages.txt"
let fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent(fileName)
func GetRandomTextLine() -> String{
        do{
            let text = try String(contentsOf: fileURL!)
            //print(text)
            var array = text.components(separatedBy: "\n")
            let count = array.count
            let random = arc4random_uniform(UInt32(count - 1))
            let words = array[Int(random)]
            print(random)
            return words
            
        }catch{
    return "ERROR Did not find messages.txt"
    }
}
func downloadLatestMessageList(){
    print("Downloading latest...")
    do{
        let temp = try String(contentsOf: linkybutt!)
        try temp.write(to: fileURL!, atomically: false, encoding: String.Encoding.utf8)
        print("Download sucessful!")
    }catch{
        print("Download Failed!")
    }
}
func checkForDupe(){
    //todo check to see if the yesterdays message happens to be todays too
}
func checkUpdate() {
    do{
        var currentVersionText = try String(contentsOf: linkyface!)
        //sleep(1) do i need to sleep?
        currentVersionText.removeLast(1)
        let currentVersion = Double(currentVersionText)!
        let myversion = 0.00//placeholder
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






