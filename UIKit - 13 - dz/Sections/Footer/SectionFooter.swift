//
//  SectionFooter.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

class SectionFooter: UICollectionReusableView {
    
    static let reuseID: String = "SectionFooter"
    
    private let appBuilder = UIBuilder()
    
    private lazy var footerDescr: UILabel = appBuilder.addLabel(text: "Lorem ipsum dolor sit amet consectetur. Enim suspendisse accumsan sed augue interdum velit aliquam lobortis donec.", fontS: 12, fontW: .light)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func setupCell(text: String, type: HeaderTypes) {
        addSubview(footerDescr)
        
        self.footerDescr.text = text
        
        setupConstr()
    }
    
    internal func setupConstr() {
        NSLayoutConstraint.activate([
            footerDescr.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            footerDescr.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            footerDescr.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            footerDescr.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
