//
//  SoundManager.swift
//  mamba1
//
//  Created by v_v1150n on 2025/2/25.
//

//import Foundation

//
//import AVFoundation
//
//class SoundManager {
//    static let shared = SoundManager()
//    var player: AVAudioPlayer?
//
//    // 播放音效
//    func playSound(named soundName: String) {
//        if let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
//            do {
//                player = try AVAudioPlayer(contentsOf: url)
//                player?.play()
//            } catch {
//                print("⚠️ 無法播放音效: \(soundName), 錯誤: \(error)")
//            }
//        } else {
//            print("⚠️ 找不到音效檔案: \(soundName).mp3")
//        }
//    }
//}

import AVFoundation

class SoundManager {
    static let shared = SoundManager()
    var player: AVAudioPlayer?

    init() {
        setupAudioSession()
    }

    func setupAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("❌ 設定 AudioSession 失敗: \(error.localizedDescription)")
        }
    }

    func playSound(named soundName: String) {
        if let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.prepareToPlay()  // **確保音效已準備好**
                player?.play()
            } catch {
                print("❌ 無法播放音效: \(soundName), 錯誤: \(error.localizedDescription)")
            }
        } else {
            print("❌ 找不到音效檔案: \(soundName).mp3")
        }
    }
}

