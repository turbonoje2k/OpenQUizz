//
//  QuestionView.swift
//  OpenQUizz
//
//  Created by noje on 04/03/2021.
//

import UIKit

class QuestionView: UIView {
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            backgroundColor = UIColor(red: 200/255.0,
                                      green: 236,
                                      blue: 260,
                                      alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
           backgroundColor = #colorLiteral(red: 0.9508246779, green: 0.5275113583, blue: 0.5786098242, alpha: 1)
            icon.image = UIImage(named: "Icon Error")
            icon.isHidden = false
        case.standard:
            backgroundColor = #colorLiteral(red: 0.7492827773, green: 0.7690848708, blue: 0.7860545516, alpha: 1)
            icon.isHidden = true
        }
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
}
