//
//  DisplayImageViewModel.swift
//  TestJob
//
//  Created by Priyanka Sinha on 04/03/24.
//

import Foundation
import UIKit

protocol DisplayImageViewModelDelegate : AnyObject{
    func showData(item:[Item])
}

class DisplayImageViewModel {
    
    weak var delegate:DisplayImageViewModelDelegate?
    let viewControllerModel:ViewControllerModel
    
  
    init(controllerModel:ViewControllerModel) {
        self.viewControllerModel  = controllerModel
    }
    
    //---assigning data in items--//
    func getData(items:[Item]){
        
        DispatchQueue.main.async { [weak self] in
        
            self?.delegate?.showData(item: items)
        }
    }
    
    
    func fetchData() {
        
       fetchDataFromServer()
    }
    
    //--API Call----//
    func fetchDataFromServer() {
        
        RestApi.fetchImageFromServer{ [weak self] result in
                   // self?.isLoadingData.value = false
                    
                    switch result {
                    case .success(let trendingMovieData):
                        self?.getData(items: trendingMovieData)//Assiging value in getData
                    case .failure(let err):
                        print(err)
                    }
                }
        }
    
}



