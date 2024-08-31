//
//  EventsCell.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

class EventsCell: UICollectionViewCell, CellProtocol {

    static var reuseID: String = "EventsCell"
    private lazy var appBuilder = UIBuilder()
    
    private lazy var postImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.widthAnchor.constraint(equalToConstant: 25).isActive = true
        $0.image = .icon01
        return $0
    }(UIImageView())

    private lazy var postTitle: UILabel = appBuilder.addLabel(text: "www", fontS: 14, fontW: .regular, line: 1)

    private lazy var postBtn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.widthAnchor.constraint(equalToConstant: 16).isActive = true
        $0.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        $0.tintColor = .appBlack
        return $0
    }(UIButton())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func setupCell(item: CollectionItems) {
        backgroundColor = .white
        layer.cornerRadius = 10
        layer.masksToBounds = true

        addSubviews(postImage, postTitle, postBtn)
        
        self.postImage.image = UIImage(named: item.image)
        self.postTitle.text = item.descr
        
        setupConstr()
    }
    
    internal func setupConstr() {
        NSLayoutConstraint.activate([
            postImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            postImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            postTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
            postTitle.leadingAnchor.constraint(equalTo: postImage.trailingAnchor, constant: 10),
            postTitle.trailingAnchor.constraint(equalTo: postBtn.leadingAnchor, constant: -10),
            
            postBtn.centerYAnchor.constraint(equalTo: centerYAnchor),
            postBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
