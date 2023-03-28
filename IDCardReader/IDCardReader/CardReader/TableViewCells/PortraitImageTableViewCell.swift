//
//  PortraitImageTableViewCell.swift
//  IDCardReader
//
//  Created by Sharon Varghese on 28/03/2023.
//

struct PortraitImageTableViewCellModel{
    var title: String?
    var image: UIImage?
}

import UIKit

class PortraitImageTableViewCell: UITableViewCell {

    @IBOutlet weak var docImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    static let reuseIdentifier = "PortraitImageTableViewCell"
    var data: PortraitImageTableViewCellModel? {
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
    func loadData() {
        titleLabel.text = data?.title
        docImageView.image = data?.image
        
    }
    
}
