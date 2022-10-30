//
//  MemoryGame.swift
//  MemorizeGame
//
//  Created by Janvier on 2022-10-30.
//

import Foundation

struct MemoryGame<CardContent> {
  private(set) var cards: Array<Card>
  
  init(numOfPairs: Int, createCardContent: (Int) -> CardContent ) {
    cards = Array<Card>()
    
    for pairIndex in 0..<numOfPairs {
      let content: CardContent = createCardContent(pairIndex)
      cards.append(Card(isFaceUp: false, isMatched: false, cardContent: content))
      cards.append(Card(isFaceUp: false, isMatched: false, cardContent: content))
    }
  }
  
  func choose(_ card: Card) {
    
  }
  
  struct Card {
    var isFaceUp: Bool
    var isMatched: Bool
    var cardContent: CardContent
  }
  
}
