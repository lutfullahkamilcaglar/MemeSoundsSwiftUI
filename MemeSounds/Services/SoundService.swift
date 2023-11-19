//
//  SoundService.swift
//  MemeSounds
//
//  Created by Kamil Caglar on 19/11/2023.
//

import Foundation
import SwiftySound
import UIKit

class SoundService {
    func playSound(named soundName: String) {
        Sound.play(file: soundName, fileExtension: "mp3")
    }
    func stopSound() {
        Sound.stopAll()
    }
    func shareSound(named soundName: String) {
        guard let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") else { return }

        let activityItem = URL(fileURLWithPath: soundURL.path)
        let activityVC = UIActivityViewController(activityItems: [activityItem], applicationActivities: nil)

        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }

        guard let topViewController = windowScene.windows.first?.rootViewController else { return }

        activityVC.popoverPresentationController?.sourceView = topViewController.view

        windowScene.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }

}
// can add numberofloops to sounds add as future

