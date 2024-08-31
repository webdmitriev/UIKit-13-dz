//
//  SectionHeader.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 31.08.2024.
//

import UIKit

class SectionHeader: UICollectionReusableView {

    static var reuseID: String = "SectionHeader"
    
    private let appBuilder = UIBuilder()
    
    private lazy var stackView: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .horizontal
        $0.alignment = .center
        $0.distribution = .equalSpacing

        $0.addArrangedSubview(headerTitle)
        $0.addArrangedSubview(headerBtn)
        return $0
    }(UIStackView())
    
    private lazy var headerTitle: UILabel = appBuilder.addLabel(text: "Новости", fontS: 20, fontW: .black)
    private lazy var headerBtn: UIButton = {
        $0.setTitleColor(.appBlue, for: .normal)
        return $0
    }(UIButton())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func setupCell(text: String, type: HeaderTypes) {
        addSubview(stackView)
        
        self.headerTitle.text = text
        switch type {
            
        case .news:
            self.headerBtn.translatesAutoresizingMaskIntoConstraints = false
            self.headerBtn.widthAnchor.constraint(equalToConstant: 21).isActive = true
            self.headerBtn.setImage(UIImage(named: "icon"), for: .normal)
        case .event:
            self.headerBtn.setTitle("Подробнее", for: .normal)
        case .users:
            self.headerBtn.setTitle("Показать всех", for: .normal)
        }
        
        setupConstr()
    }
    
    internal func setupConstr() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 13),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -13),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
