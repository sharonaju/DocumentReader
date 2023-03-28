//
//  LoadingView.swift
//  IDCardReader
//
//  Created by Sharon Varghese on 28/03/2023.
//

import UIKit
class LoadingView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Bundle.main.loadNibNamed("LoadingView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("LoadingView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
