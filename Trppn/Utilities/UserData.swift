//
//  UserData.swift
//  Trppn
//
//  Created by Piotr Tyl on 13/02/2023.
//

import Foundation

func getUserName() -> String? {
    if let data = UserDefaults.standard.data(forKey: "userName") {
           if let decoded = try? JSONDecoder().decode(String.self, from: data) {
               return decoded
           }
       }
    return nil
}

func saveUserName(name: String) {
    if let encoded = try? JSONEncoder().encode(name) {
            UserDefaults.standard.set(encoded, forKey: "userName")
        }
}
