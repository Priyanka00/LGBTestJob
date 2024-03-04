//
//  RestApi.swift
//  TestJob
//
//  Created by Priyanka Sinha on 28/02/24.
//

import Foundation
import UIKit

// TODO: GET key and Custom error

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

public class RestApi {


    class func fetchImageFromServer(completionHandler: @escaping (_ result: Result<[Item], NetworkError>) -> Void) {
    
        guard let url = URL(string:NetworkConstants.shared.imageServerAddress) else { return}
    URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, err in
                if err == nil,
                   let data = dataResponse,
                   let resultData = try? JSONDecoder().decode([Item].self, from: data) {
                    completionHandler(.success(resultData))
                } else {
                    print(err.debugDescription)
                    completionHandler(.failure(.canNotParseData))
                }

    }.resume()
    
//    let url = base() + postFixUrl
//    let header : [String : String]?  = ["Content-Type":"application/json"]
//    Alamofire.request(url,  encoding: JSONEncoding.default, headers: header).responseJSON { (responseObject) -> Void in
//        print(responseObject)
//        if responseObject.result.isSuccess {
//            let resJson = JSON(responseObject.result.value!)
//            success(resJson)
//        }
//        if responseObject.result.isFailure {
//            if let error = responseObject.response?.statusCode {
//                failure(error)
//            }
//            else {
//                failure(01)
//            }
//        }
//   }
 }
 
}
