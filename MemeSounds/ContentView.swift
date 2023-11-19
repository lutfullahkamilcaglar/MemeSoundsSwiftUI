//
//  ContentView.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 02/10/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var soundListViewModel: SoundListViewModel

    init() {
        let soundService = SoundService()
        soundListViewModel = SoundListViewModel(sounds: sounds, soundService: soundService)
    }

    var body: some View {
        TabView {
            NavigationView {
                SoundView(viewModel: soundListViewModel)
            }
            .tabItem {
                Image(systemName: "music.note.list")
                Text("Home")
            }

            NavigationView {
                FavoritesView(viewModel: soundListViewModel)
            }
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Favorites")
            }
        }
    }
}

#Preview {
    ContentView()
}
