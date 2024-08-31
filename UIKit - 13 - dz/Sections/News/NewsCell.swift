//
//  NewsCell.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

protocol CellProtocol: AnyObject {
    static var reuseID: String { get }
    func setupCell(item: CollectionItems)
    func setupConstr()
}

class NewsCell: UICollectionViewCell, CellProtocol {

    static var reuseID: String = "NewsCell"
    private lazy var appBuilder = UIBuilder()
    
    private lazy var postImage: UIImageView = appBuilder.addImage(image: "news-01")
    private lazy var postTitle: UILabel = appBuilder.addLabel(text: "", fontS: 20, fontW: .black, color: .white, line: 1)
    private lazy var postDate: UILabel = appBuilder.addLabel(text: "", fontS: 12, fontW: .light, color: .appGrayText)
    private lazy var postDescr: UILabel = appBuilder.addLabel(text: "", fontS: 14, fontW: .light, color: .appGrayText, line: 2)
    private lazy var postLink: UILabel = appBuilder.addLabel(text: "Читать", fontS: 14, fontW: .light, color: .white)
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.layer.cornerRadius = 20
        contentView.layer.masksToBounds = true

        contentView.addSubviews(postImage, postTitle, postDate, postDescr, postLink)
        
        setupConstr()
    }
    
    func setupCell(item: CollectionItems) {
        self.postImage.image = UIImage(named: item.image)
        self.postTitle.text = item.title
        self.postDate.text = item.date
        self.postDescr.text = item.descr
    }
    
    internal func setupConstr() {
        NSLayoutConstraint.activate([
            postImage.topAnchor.constraint(equalTo: topAnchor),
            postImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            postImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            postImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            postTitle.topAnchor.constraint(equalTo: postImage.topAnchor, constant: 22),
            postTitle.leadingAnchor.constraint(equalTo: postImage.leadingAnchor, constant: 16),
            postTitle.trailingAnchor.constraint(equalTo: postImage.trailingAnchor, constant: -16),
            
            postDate.topAnchor.constraint(equalTo: postTitle.bottomAnchor, constant: 3),
            postDate.leadingAnchor.constraint(equalTo: postImage.leadingAnchor, constant: 16),
            postDate.trailingAnchor.constraint(equalTo: postImage.trailingAnchor, constant: -16),
            
            postDescr.topAnchor.constraint(equalTo: postDate.bottomAnchor, constant: 8),
            postDescr.leadingAnchor.constraint(equalTo: postImage.leadingAnchor, constant: 16),
            postDescr.trailingAnchor.constraint(equalTo: postImage.trailingAnchor, constant: -16),
            
            postLink.leadingAnchor.constraint(equalTo: postImage.leadingAnchor, constant: 16),
            postLink.trailingAnchor.constraint(equalTo: postImage.trailingAnchor, constant: -16),
            postLink.bottomAnchor.constraint(equalTo: postImage.bottomAnchor, constant: -20),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
