//
//  Test.swift
//  TechParkProject
//
//  Created by Виталий Малахов on 16.03.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class Test {
    var name: String
    var photo: UIImage?
    
    init?(name: String, photo: UIImage?) {
        
        guard !name.isEmpty else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        
    }
    
}
