//
//  ModelData.swift
//  ScalableTableView
//
//  Created by Aman Verma on 05/06/24.
//

import Foundation

public class ModelData {
    static var shared = ModelData()
    var inputData:[InputDataModel] = []
    
    func createTableViewData() -> [InputDataModel]{
        inputData.append(TitleCellInput(titleVm: TitleTableViewCellVM(title: "Hello")))
        inputData.append(TitleCellInput(titleVm: TitleTableViewCellVM(title: "Bye")))
        inputData.append(TitleCellInput(titleVm: TitleTableViewCellVM(title: "Good morning")))
        inputData.append(ImageCellInput(imageVm: ImageTableViewCellVM(image: "bike")))
        inputData.append(TitleCellInput(titleVm: TitleTableViewCellVM(title: "Good Night")))
        return inputData
    }
    
}
