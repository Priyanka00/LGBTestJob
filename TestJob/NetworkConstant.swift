//
//  NetworkConstant.swift
//  TestJob
//
//  Created by Priyanka Sinha on 04/03/24.
//

import Foundation

class NetworkConstants {
    
    public static var shared: NetworkConstants = NetworkConstants()
    
    public var apiKey: String {
        get {
            //https://www.themoviedb.org/
            //Put your own API key here
            return ""
        }
    }
    
    
    public var imageServerAddress: String {
        get {
            return "https://api.thecatapi.com/v1/images/search?limit=10"
        }
    }
}
