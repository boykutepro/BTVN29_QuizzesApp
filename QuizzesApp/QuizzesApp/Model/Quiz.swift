//
//  Quiz.swift
//  QuizzesApp
//
//  Created by Thiện Tùng on 2/10/20.
//  Copyright © 2020 tung. All rights reserved.
//

import Foundation

struct Test {
    // Chủ đề câu hỏi
    var subject: String
    // Mảng câu hỏi
    var question: [Question]
}

struct Question {
    // Câu hỏi
    var question: String
    // Mảng câu trả lời
    var answer: [Answer]
    // Vị trí câu trả lời đúng
    var indexRightAnswer: Int
}

struct Answer {
    // Đáp án đúng
    var answer: String
    // Check đáp án này có được chọn không
    var isSelected: Bool
    
    init(answer: String, isSelected: Bool) {
        self.answer = answer
        self.isSelected = isSelected
    }
}


