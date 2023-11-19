//
//  SoundDetailViewModel.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 19/11/2023.
//

import SwiftUI

struct SoundDetailView: View {
    var sound: MemeSound
    @ObservedObject var viewModel: SoundListViewModel

    var body: some View {
        VStack {
            Text(sound.soundName)
                .font(.title)

            Button(action: {
                playSound()
            }) {
                Image(systemName: "play.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
            }

            Spacer()
        }
        .padding()
        .navigationBarTitle("Sound Detail")
    }

    private func playSound() {
        viewModel.soundService.playSound(named: sound.soundName)
    }
}
