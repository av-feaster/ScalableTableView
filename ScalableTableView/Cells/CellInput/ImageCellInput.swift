//
//  ImageCellInput.swift
//  ScalableTableView
//
//  Created by Aman Verma on 05/06/24.
//

import Foundation
import UIKit

class ImageCellInput: InputDataModel {
    var imageVm: ImageTableViewCellVM
    
    init(imageVm: ImageTableViewCellVM) {
        self.imageVm = imageVm
    }
    func heightForRowAt() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func numberOfRows() -> Int {
        1
    }
    
    func cellForRowAt(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView
        if let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as? ImageTableViewCell {
            cell.showData(viewModel: imageVm)
            return cell
        }
        return UITableViewCell()
    }
    
    func didSelectRowAt(_ tableView: UITableView, indexPath: IndexPath) {
        
    }
    
    func willDisplay(cell: UITableViewCell, indexPath: IndexPath, screenName: String) {
        
    }
    
    func didEndDisplaying(cell: UITableViewCell, indexPath: IndexPath, screenName: String) {
        
    }
    
    
}
