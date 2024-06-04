//
//  ViewController.swift
//  ScalableTableView
//
//  Created by Aman Verma on 04/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel = ViewModel() {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpTableView()
        
    }
    func setUpTableView() {
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableView.automaticDimension
        tableView?.sectionHeaderHeight = 70
        tableView?.separatorStyle = .none

        tableView?.dataSource = self
        tableView?.delegate = self

        tableView?.register(ImageTableViewCell.nib, forCellReuseIdentifier: ImageTableViewCell.identifier)
        tableView?.register(TitleTableViewCell.nib, forCellReuseIdentifier: TitleTableViewCell.identifier)
    }

    


}

extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.inputData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let input = viewModel.inputData[safe: indexPath.row] else {
            return UITableViewCell()
        }
        return input.cellForRowAt(tableView, indexPath: indexPath)        
    }
    
    
}
extension ViewController {
    func createTableViewData() {
        tableView.reloadData()
    }
}

extension Array {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
