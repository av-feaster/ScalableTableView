//
//  ImageTableViewCell.swift
//  ScalableTableView
//
//  Created by Aman Verma on 05/06/24.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    var viewModel: ImageTableViewCellVM! {
        didSet {
            guard let image = viewModel.image  else { return }
            self.imgView.image = UIImage(named: image)
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
    
    func showData(viewModel: ImageTableViewCellVM) {
        self.viewModel = viewModel
    }
    
}

extension ImageTableViewCell: CellIdentifiable {
    
}


