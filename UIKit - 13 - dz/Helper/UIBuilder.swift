//
//  UIBuilder.swift
//  UIKit - 13 - dz
//
//  Created by Олег Дмитриев on 30.08.2024.
//

import UIKit

class UIBuilder {
    
    static let inset: CGFloat = 16
    
    func addLabel(text: String, fontS: CGFloat, fontW: UIFont.Weight, color: UIColor = .appBlack, line: Int = 0) -> UILabel {
        let txt = UILabel()
        
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.text = text
        txt.font = .systemFont(ofSize: fontS, weight: fontW)
        txt.textColor = color
        txt.numberOfLines = line
        
        return txt
    }
    
    func addImage(image: String) -> UIImageView {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: image)
        img.contentMode = .scaleAspectFill
        img.layer.masksToBounds = true
        
        return img
    }
    
}
