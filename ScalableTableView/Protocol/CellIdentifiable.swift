//
//  CellIdentifiable.swift
//  ScalableTableView
//
//  Created by Aman Verma on 04/06/24.
//


import UIKit

protocol CellIdentifiable {

    static var nib: UINib { get }

    static var identifier: String { get }

}

extension CellIdentifiable {

    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    static var identifier: String {
        return String(describing: self)
    }

}
