//
//  File.swift
//  TechParkProject
//
//  Created by Oleg on 21.05.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import Foundation

class Post {
    var id : String
    var author : String
    var text : String
    
    init (id:String, author:String, text:String) {
        self.id = id
        self.author = author
        self.text = text
    }
}
