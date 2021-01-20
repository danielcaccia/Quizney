//
//  Question.swift
//  Quizney
//
//  Created by Daniel Caccia on 19/01/21.
//

import Foundation

struct Question {
    
    let id: Int
    let text: String
    let answer: String
    let curiosity: String
    
    init(id: Int, q: String, a: String, c: String) {
        self.id = id
        text = q
        answer = a
        curiosity = c
    }
    
}
