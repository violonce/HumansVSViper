//
//  String+Random.swift
//  Humans
//
//  Created by Илья on 12.07.2021.
//

import Foundation

extension String {
    static func randomName() -> String {
        let length = Int.random(in: 3...7)
        let lowLetters : NSString = "abcdefghijklmnopqrstuvwxyz"
        let upLetters : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let countLetters = upLetters.length
        let randomString : NSMutableString = NSMutableString(capacity: length)
        
        for i in 0..<length{
            let rand = arc4random_uniform(UInt32(countLetters))
            if i == 0 {
                randomString.appendFormat("%C", upLetters.character(at: Int(rand)))
            }else{
                randomString.appendFormat("%C", lowLetters.character(at: Int(rand)))
            }
        }

        return randomString.capitalized
    }
}

