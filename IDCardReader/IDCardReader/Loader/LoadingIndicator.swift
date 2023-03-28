//
//  LoadingIndicator.swift
//  IDCardReader
//
//  Created by Sharon Varghese on 28/03/2023.
//

import UIKit

class LoadingIndicator: NSObject {
    
    
    static let shared = LoadingIndicator()
    
    private var loadingView: LoadingView = {
        var view = LoadingView()
        view.frame = UIScreen.main.bounds
        return view
    }()
    private override init() {
        super.init()
    }
    
    func showLoading() {
        loadingView.activityIndicator.startAnimating()
        guard let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return }
        window.addSubview(loadingView)
        loadingView.fillInSuperView()
        
    }
    
    func hideLaoding() {
        loadingView.activityIndicator.stopAnimating()
        loadingView.removeFromSuperview()
    }
}
extension UIView {
    
    func fillInSuperView(top: CGFloat = 0.0, bottom: CGFloat = 0.0, leading: CGFloat = 0.0, trailing: CGFloat = 0.0) {
        guard let superview = superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-\(leading)-[view]-\(trailing)-|", options: [], metrics: nil, views: ["view": self]))
        superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-\(top)-[view]-\(bottom)-|", options: [], metrics: nil, views: ["view": self]))
    }
    
    
}
