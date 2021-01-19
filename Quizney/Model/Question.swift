//
//  Question.swift
//  Quizney
//
//  Created by Daniel Caccia on 19/01/21.
//

import Foundation

struct Question {
    
    let text: String
    let answer: String
    let curiosity: String
    
    init(q: String, a: String, c: String) {
        text = q
        answer = a
        curiosity = c
    }
    
}
