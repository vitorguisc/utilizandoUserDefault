//
//  Utils.swift
//  ProjectUserDefault
//
//  Created by Vitor Guilherme da Silva Costa on 10/02/23.
//

import Foundation

class Utils{
    static func saveUserDefaults(value: Any, key:String){
        UserDefaults.standard.setValue(value, forKey: key)
    }
    static func getUserDefaults(key:String)->Any?{
        let value = UserDefaults.standard.object(forKey: key)
        return value
    }
}
