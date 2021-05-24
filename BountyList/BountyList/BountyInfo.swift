//
//  BountyInfo.swift
//  BountyList
//
//  Created by judongseok on 2021/05/24.
//

import UIKit

// Model
struct BountyInfo{
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
}
