//
//  DocumentImageTableViewCell.swift
//  IDCardReader
//
//  Created by Sharon Varghese on 28/03/2023.
//

import UIKit

struct DocumentImageTableViewCellModel {
    var image: UIImage?
}

class DocumentImageTableViewCell: UITableViewCell {
    static let reuseIdentifier = "DocumentImageTableViewCell"
    @IBOutlet weak var docImageView: UIImageView!
    var data: DocumentImageTableViewCellModel? {
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
        docImageView.image = data?.image
    }
    
}
