//
//  ViewController.swift
//  OpenQUizz
//
//  Created by noje on 03/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Game()
    
    
    @IBOutlet weak internal var
        newGameButton: UIButton!
    
    @IBOutlet weak internal var
        questionView:
        QuestionView!
    
    @IBOutlet weak internal var
        scoreLabel: UILabel!
    
    @IBOutlet weak internal var
        activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = Notification.Name(rawValue: "QuestionLoaded")
        NotificationCenter.default.addObserver(self, selector: #selector(questionLoaded), name: name, object: nil)
        startNewGame()
    }
    
   @objc  func questionLoaded() {
    activityIndicator.isHidden = true
    newGameButton.isHidden = false
    }
    
    private func startNewGame() {
        activityIndicator.isHidden = false
        newGameButton.isHidden = true
        
        questionView.title = "Loading..."
        questionView.style = .standard
        questionView.title = game.currentQuestion.title
        
        scoreLabel.text = "0 / 10"
        
        game.refresh()
        
    }
    
    @IBAction func didTapNewGameButton() {
        startNewGame()
    }
}

