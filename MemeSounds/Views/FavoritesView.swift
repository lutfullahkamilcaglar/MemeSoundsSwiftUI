//
//  FavoritesView.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 19/11/2023.
//

import Foundation

import SwiftUI

struct FavoritesView: View {
    @ObservedObject var viewModel: SoundListViewModel

    var body: some View {
        List(viewModel.sounds.filter { $0.isFavorite }) { sound in
            SoundRow(viewModel: viewModel, sound: sound)
        }
        .navigationBarItems(trailing: StopButton(viewModel: viewModel))
        .navigationTitle("Favorites")
    }
}
