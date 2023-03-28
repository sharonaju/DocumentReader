//
//  ClearDataTableViewCell.swift
//  IDCardReader
//
//  Created by Sharon Varghese on 28/03/2023.
//

import UIKit

struct ClearDataTableViewCellModel {
    var title: String?
}

class ClearDataTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    static let reuseIdentifier = "ClearDataTableViewCell"
    
    var data: ClearDataTableViewCellModel? {
        didSet {
            loadData()
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
    
    func loadData()  {
        titleLabel.text = data?.title
    }
    
}
