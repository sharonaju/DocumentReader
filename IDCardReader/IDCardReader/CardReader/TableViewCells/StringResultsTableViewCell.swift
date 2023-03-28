//
//  StringResultsTableViewCell.swift
//  IDCardReader
//
//  Created by Sharon Varghese on 28/03/2023.
//

import UIKit
struct StringResultsTableViewCellModel {
    var title: String?
    var value: String?
}

class StringResultsTableViewCell: UITableViewCell {

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    static let reuseIdentifier = "StringResultsTableViewCell"
    
    var data: StringResultsTableViewCellModel? {
        didSet {
            loadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadData() {
        titleLabel.text = data?.title
        valueLabel.text = data?.value
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
