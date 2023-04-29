//
//  ScoreboardViewController.swift
//  iQuiz
//
//  Created by Leonardo Ávila on 24/04/23.
//

import UIKit

class ScoreboardViewController: UIViewController {
    
    var score: Int?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    
    
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        configResults()
    }
    
    func setupLayout() {
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12.0
    }
    
    func configResults(){
        guard let score = score else { return }
        
        resultLabel.text = "You scored \(score) out of \(issues.count)!"
        
        let percentage = score * 100 / issues.count
        
        percentageLabel.text = "Final percentage: \(percentage)%"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
