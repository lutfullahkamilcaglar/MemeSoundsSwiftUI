//
//  ShareButton.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 20/11/2023.
//

import SwiftUI

import SwiftUI

struct ShareButton: View {
    @ObservedObject var viewModel: SoundListViewModel
    @State private var animationsRunning = false
    let soundName: String

    var body: some View {
        Button(action: {
            viewModel.soundService.shareSound(named: soundName)
            animationsRunning.toggle()
        }) {
            Image(systemName: "square.and.arrow.up")
                .padding()
                .imageScale(.large)
                .
            symbolRenderingMode(.palette)
                .foregroundStyle(
                    .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottomTrailing),
                    .linearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottomTrailing),
                    .linearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottomTrailing)
                )
                .symbolEffect(.variableColor.reversing.cumulative, value: animationsRunning)
                
        }
    }
}
