//
//  StopButton.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 20/11/2023.
//

import SwiftUI

struct StopButton: View {
    @ObservedObject var viewModel: SoundListViewModel
    @State private var symbolEffect = false
    
    var body: some View {
        Button(action: {
            viewModel.soundService.stopSound()
            symbolEffect.toggle()
        }) {
            Image(systemName: "stop.circle.fill")
                .imageScale(.large)
                .foregroundColor(.red)
                .symbolEffect(.bounce, value: symbolEffect)
        }
    }
}
