//
//  InputDataModel.swift
//  ScalableTableView
//
//  Created by Aman Verma on 04/06/24.
//

import UIKit

protocol InputDataModel {
    func heightForRowAt() -> CGFloat
    func numberOfRows() -> Int
    func cellForRowAt(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell
    func didSelectRowAt(_ tableView: UITableView, indexPath: IndexPath)
    func willDisplay(cell: UITableViewCell, indexPath: IndexPath, screenName: String)
    func didEndDisplaying(cell: UITableViewCell, indexPath: IndexPath, screenName: String)
    
}

