//
//  SoundRow.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 19/11/2023.
//

import SwiftUI

struct SoundRow: View {
    @ObservedObject var viewModel: SoundListViewModel
    @State private var symbolEffect = false
    var sound: MemeSound

    var body: some View {
        HStack(spacing: 0) {
            Image(systemName: sound.isFavorite ? "star.fill": "star") // TODO seperate!!
                   .padding()
                   .imageScale(.large)
                   .foregroundStyle(.yellow)
                   .contentTransition(.symbolEffect(.replace))
                   .onTapGesture {
                     viewModel.toggleFavorite(for: sound)
            }
            
            Spacer()
            
            Text(sound.soundName)
                .padding()
                .contentShape(Rectangle())
                .onTapGesture {
                    viewModel.soundService.playSound(named: sound.soundName)
                }
            
            Spacer()
            
            ShareButton(viewModel: viewModel, soundName: sound.soundName)
        }

    }
}
