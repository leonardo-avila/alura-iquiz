//
//  ViewController.swift
//  iQuiz
//
//  Created by Leonardo Ávila on 23/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startQuizButton: UIButton!
    
    @IBAction func startQuizButtonPressed(_ sender: Any) {
        print("Start quiz button pressed!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout(){
        navigationItem.hidesBackButton = true
        startQuizButton.layer.cornerRadius = 12.0
    }

}

