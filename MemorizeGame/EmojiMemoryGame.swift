//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by Janvier on 2022-10-30.
//

import SwiftUI


class EmojiMemoryGame {
  static let emojis = ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑", "🥦", "🥬", "🥒", "🌶️", "🫑", "🌽", "🥕", "🫒", "🧄", "🧅", "🥔", "🍠", "🥐", "🥯"]
  private var model: MemoryGame<String> = createMemoryGameModel()
  
  static func createMemoryGameModel() -> MemoryGame<String> {
    MemoryGame<String>(numOfPairs: 3) {pairIndex in emojis[pairIndex]}
  }
  
  var cards: Array<MemoryGame<String>.Card> {  model.cards }
}


