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
           backgroundColor = UIColor(red: 243.0/255.0,
                                     green: 135.0/255.0,
                                     blue: 148.0/255.0,
                                     alpha: 1)
            icon.image = UIImage(named: "Icon Error")
            icon.isHidden = false
        case.standard:
            backgroundColor = UIColor(red: 191.0/255.0,
                                      green: 196.0/255.0,
                                      blue: 201.0/255.0,
                                      Suppoalpha: 1)
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
