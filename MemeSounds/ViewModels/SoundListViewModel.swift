//
//  SoundListViewModel.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 19/11/2023.
//

import Foundation

class SoundListViewModel: ObservableObject {
    @Published var sounds: [MemeSound]
    var soundService: SoundService

    init(sounds: [MemeSound], soundService: SoundService) {
        self.sounds = sounds
        self.soundService = soundService
    }

    func toggleFavorite(for sound: MemeSound) {
        if let index = sounds.firstIndex(where: { $0.id == sound.id }) {
            sounds[index].isFavorite.toggle()
        }
    }
}
