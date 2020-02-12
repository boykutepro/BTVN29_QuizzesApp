//
//  MyCell.swift
//  QuizzesApp
//
//  Created by Thiện Tùng on 2/10/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class MyCell: UICollectionViewCell {
    // khởi tạo containerView
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    // khởi tạo imageView
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "")
        return imageView
    }()
    
    // khởi tạo title
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .white
        return label
    }()
    
}
