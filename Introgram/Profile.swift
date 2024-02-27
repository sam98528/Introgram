//
//  Profile.swift
//  Introgram
//
//  Created by Sam.Lee on 2/26/24.
//

import Foundation

struct Profile {
    let name: String
    var image: String
}

extension Profile {
    static var data = [
        Profile(name: "이승원", image: "이승원"),
        Profile(name: "채나연", image: "채나연"),
        Profile(name: "박주현", image: "박주현"),
        Profile(name: "김민희", image: "김민희"),
        Profile(name: "신승현", image: "신승현"),
    ]
}
