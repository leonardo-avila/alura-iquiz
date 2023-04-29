//
//  IssueViewController.swift
//  iQuiz
//
//  Created by Leonardo Ávila on 23/04/23.
//

import UIKit

class IssueViewController: UIViewController {

    var score = 0
    var issueNumber = 0
    
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet weak var issueTitleLabel: UILabel!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if (sender.tag == issues[issueNumber].correctAnswer)
        {
            score += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        if issueNumber < issues.count - 1 {
            issueNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(setupIssue), userInfo: nil, repeats: false)
        } else {
            navigateToScoreboard()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        setupIssue()
    }
    
    func setupLayout(){
        navigationItem.hidesBackButton = true
        
        issueTitleLabel.numberOfLines = 0
        issueTitleLabel.textAlignment = .center
        answerButtons.forEach { button in
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func setupIssue(){
        issueTitleLabel.text = issues[issueNumber].title
        answerButtons.forEach { button in
            button.setTitle(issues[issueNumber].answers[button.tag], for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
        
    }
    
    func navigateToScoreboard() {
        performSegue(withIdentifier: "goToScoreboard", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let scoreboardViewController = segue.destination as? ScoreboardViewController else { return }
        scoreboardViewController.score = score
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
