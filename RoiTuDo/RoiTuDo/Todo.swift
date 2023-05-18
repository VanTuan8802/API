//
//  Todo.swift
//  RoiTuDo
//
//  Created by Nguyễn Tuấn on 15/05/2023.
//

import Foundation

struct WelcomeElement: Codable {
    let userID, id: Int
    let title: String
    let completed: Bool

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id
        case title
        case completed
    }
}
