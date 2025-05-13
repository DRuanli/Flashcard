//
//  Flashcard.swift
//  Flashcard
//
//  Created by Lê Nguyễn on 13/5/25.
//

import Foundation

struct Flashcard: Identifiable {
    var id = UUID()
    var question: String
    var answer: String
}
