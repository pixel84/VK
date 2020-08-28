//
//  Group.swift
//  VK_Prohorov
//
//  Created by Alex Shader on 24.08.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class Group {
    var name: String
    var avatarImageName: String
    
    init(name: String,
         avatarImageName: String) {
        self.name = name
        self.avatarImageName = avatarImageName
    }
}

extension Group: Equatable {
    static func == (lhs: Group, rhs: Group) -> Bool {
        return lhs.name == rhs.name
    }
}
