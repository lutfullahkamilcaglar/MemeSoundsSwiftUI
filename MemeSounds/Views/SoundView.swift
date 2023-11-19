//
//  SoundView.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 20/11/2023.
//

import Foundation
import SwiftUI

struct SoundView: View {
    @ObservedObject var viewModel: SoundListViewModel

    var body: some View {
        List(viewModel.sounds) { sound in
            SoundRow(viewModel: viewModel, sound: sound)
        }
        .navigationBarItems(trailing: StopButton(viewModel: viewModel))
        .navigationTitle("Home")
    }
}
