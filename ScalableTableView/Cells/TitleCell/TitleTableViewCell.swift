//
//  TitleTableViewCell.swift
//  ScalableTableView
//
//  Created by Aman Verma on 05/06/24.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    var viewModel: TitleTableViewCellVM? {
        didSet{
            print("viewModel?.title \(viewModel?.title)")
            self.labelTitle.text = viewModel?.title
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func showData(viewModel: TitleTableViewCellVM) {
        print("<<<>>> showdata viewmodel \(viewModel.title)")
        self.viewModel = viewModel
    }
    
}
extension TitleTableViewCell:CellIdentifiable {
    
}



