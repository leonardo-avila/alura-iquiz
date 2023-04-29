//
//  Issue.swift
//  iQuiz
//
//  Created by Leonardo Ávila on 24/04/23.
//

import Foundation

struct Issue {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let issues: [Issue] = [
    Issue(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter? ", answers: [
    "Expecto Patronum", "Avada Kedavra", "Expelliarmus"], correctAnswer: 2),
    Issue(title: "Em que ano Vingadores Ultimato foi lançado?", answers: [
    "2019", "2018", "2017"], correctAnswer: 0),
    Issue(title: "Em que ano Avatar 2 foi lançado?", answers: [
    "2014", "2022", "2023"], correctAnswer: 1)
]
