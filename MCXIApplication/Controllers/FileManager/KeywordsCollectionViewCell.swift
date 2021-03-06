//
//  KeywordsCollectionViewCell.swift
//  Ready
//
//  Created by Astroworld on 04/05/2020.
//  Copyright © 2020 Valentino Palomba. All rights reserved.
//

import UIKit

class KeywordsCollectionViewCell: UICollectionViewCell {
    
    var labelTitle : UILabel = {
        let labelTitle = UILabel()
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.textAlignment = .center
        labelTitle.font = FontKit.roundedFont(ofSize: 18, weight: .regular)
        labelTitle.textColor = #colorLiteral(red: 0.3019607843, green: 0.3019607843, blue: 0.3019607843, alpha: 1)
        return labelTitle
    }()
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        self.layer.cornerRadius = 20
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpConstraints(){
        self.contentView.addSubview(labelTitle)
        
        NSLayoutConstraint.activate([
        
            labelTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            labelTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            labelTitle.topAnchor.constraint(equalTo: contentView.topAnchor),
            labelTitle.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        
        
        ])
        
    }
    
}

