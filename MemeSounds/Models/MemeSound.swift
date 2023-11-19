//
//  Sound.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 19/11/2023.
//

import Foundation

struct MemeSound: Identifiable, Codable {
    var id = UUID()
    let soundName: String
    var isFavorite: Bool = false // TODO delete is favorite
}
