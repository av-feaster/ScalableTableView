//
//  TitleTableViewCellVM.swift
//  ScalableTableView
//
//  Created by Aman Verma on 05/06/24.
//

import Foundation

class TitleTableViewCellVM {
    var title:String?
    
    init(title: String?) {
        self.title = title
        print("<<<>>> title \(title)")
    }
}
