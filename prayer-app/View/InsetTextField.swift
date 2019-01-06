//
//  InsetTextField.swift
//  prayer-app
//
//  Created by Kyle Johannsen on 1/6/19.
//  Copyright © 2019 Kyle Johannsen. All rights reserved.
//

import UIKit

class InsetTextField: UITextField {

    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    
    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    func setupView() {
        let attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.3266413212, green: 0.4215201139, blue: 0.7752227187, alpha: 1)])
        self.attributedPlaceholder = attributedPlaceholder
    }

}
