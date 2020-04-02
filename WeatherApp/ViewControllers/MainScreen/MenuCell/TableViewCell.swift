//
//  TableViewCell.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    static var identifier = "TableViewCell"
    static var nib = UINib(nibName: identifier, bundle: nil)
    
    /// Title Label
    @IBOutlet weak var titleLabel: UILabel? {
        didSet {
            titleLabel?.textColor = UIColor.blackColor
            titleLabel?.font      = UIFont.systemFont(ofSize: 20)
        }
    }
    
    /// awake
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none
    }

    /// selected state
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
