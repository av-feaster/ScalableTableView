//
//  TitleCellInput.swift
//  ScalableTableView
//
//  Created by Aman Verma on 05/06/24.
//

import UIKit

class TitleCellInput: InputDataModel {
    var titleVm: TitleTableViewCellVM
    
    init(titleVm: TitleTableViewCellVM) {
        self.titleVm = titleVm
    }
    func heightForRowAt() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func numberOfRows() -> Int {
        1
    }
    
    func cellForRowAt(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell {
            cell.showData(viewModel: titleVm)
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
