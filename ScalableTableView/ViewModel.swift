//
//  ViewModel.swift
//  ScalableTableView
//
//  Created by Aman Verma on 05/06/24.
//

import Foundation

class ViewModel {
    var inputData:[InputDataModel] = []
    
    init() {
        inputData = ModelData.shared.createTableViewData()
    }
}
