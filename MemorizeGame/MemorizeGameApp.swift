//
//  MemorizeGameApp.swift
//  MemorizeGame
//
//  Created by Janvier on 2022-02-25.
//

import SwiftUI

@main
struct MemorizeGameApp: App {
  let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(game: game)
        }
    }
}
