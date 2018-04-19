//
//  TestCellModel.swift
//  TechParkProject
//
//  Created by Aleksey Bgattsev on 18.03.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import Foundation

class TestCellModel {
    var title: String?
    var description: String?
    
    init?(title: String, description: String) {
        
        guard !title.isEmpty else {
            return nil
        }
        self.title = title
        self.description = description
    }
}
