//
//  Joke.swift
//  Сеть часть 2
//
//  Created by mac on 28.03.2022.
//

import Foundation

struct Joke: Codable {
    let error: Bool
    let category, type, setup, delivery: String
    let flags: Flags
    let safe: Bool
    let id: Int
    let lang: String
}

// MARK: - Flags
struct Flags: Codable {
    let nsfw, religious, political, racist: Bool
    let sexist, explicit: Bool
}
