//
//  CollectionViewCell.swift
//  QuizzesApp
//
//  Created by Thiện Tùng on 2/10/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var subjectLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        subjectLabel.textAlignment = .center
        subjectLabel.textColor = UIColor(red: 0.29, green: 0.75, blue: 0.65, alpha: 1.0)
        
    }
}
