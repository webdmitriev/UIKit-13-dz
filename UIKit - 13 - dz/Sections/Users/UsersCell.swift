//
//  UsersCell.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

class UsersCell: UICollectionViewCell, CellProtocol {
    
    static var reuseID: String = "UsersCell"
    private lazy var appBuilder = UIBuilder()
    
    private lazy var postImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.widthAnchor.constraint(equalToConstant: 50).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 50).isActive = true
        $0.image = .avatar01
        $0.layer.cornerRadius = 25
        $0.layer.masksToBounds = true
        return $0
    }(UIImageView())

    private lazy var postTitle: UILabel = appBuilder.addLabel(text: "Joan", fontS: 14, fontW: .bold, line: 1)
    private lazy var postDescr: UILabel = appBuilder.addLabel(text: "Lorem ipsum dolor sit amet consectetur.",
                                                              fontS: 14, fontW: .regular, color: .appBlack, line: 2)

    private lazy var postBtn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Написать", for: .normal)
        $0.setTitleColor(.appBlue, for: .normal)
        $0.tintColor = .appBlue
        return $0
    }(UIButton())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func setupCell(item: CollectionItems) {
        backgroundColor = .white
        layer.cornerRadius = 20
        layer.masksToBounds = true
        
        postTitle.textAlignment = .center
        postDescr.textAlignment = .center

        addSubviews(postImage, postTitle, postDescr, postBtn)
        
        self.postImage.image = UIImage(named: item.image)
        self.postTitle.text = item.name
        self.postDescr.text = item.descr
        setupConstr()
    }
    
    internal func setupConstr() {
        NSLayoutConstraint.activate([
            postImage.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            postImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            postTitle.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 4),
            postTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            postTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            postDescr.topAnchor.constraint(equalTo: postTitle.bottomAnchor, constant: 6),
            postDescr.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            postDescr.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            postBtn.leadingAnchor.constraint(equalTo: leadingAnchor),
            postBtn.trailingAnchor.constraint(equalTo: trailingAnchor),
            postBtn.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -11),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
