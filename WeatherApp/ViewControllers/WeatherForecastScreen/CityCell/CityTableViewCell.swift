//
//  CityTableViewCell.swift
//  WeatherApp
//
//  Created by Sreekumar K on 02/04/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

/// This class was designed and implemented for displaying city name
class CityTableViewCell: UITableViewCell {

    static var identifier = "CityTableViewCell"
    static var nib = UINib(nibName: identifier, bundle: nil)
    
    /// Name Label
    @IBOutlet weak var nameLabel: UILabel? {
        didSet {
            nameLabel?.textColor = UIColor.blackColor
            nameLabel?.font      = UIFont.boldSystemFont(ofSize: 25)
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
