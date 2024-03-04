//
//  ViewControllerModel.swift
//  TestJob
//
//  Created by Priyanka Sinha on 26/12/23.
//

import Foundation

struct Item:Codable{
    let id : String
    let url:String
    let height : Int
    let width: Int
    
    init(id: String, url:String, height : Int,width: Int) {
        self.id = id
        self.url = url
        self.height = height
        self.width = width
    }
    
}

class ViewControllerModel{
    
}
