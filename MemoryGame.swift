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
  
  mutating func choose(_ card: Card) {
    cards[index(of: card)].isFaceUp.toggle()
  }
  
  func index(of card: Card) -> Int{
    for cardIndex in 0..<cards.count {
      if cards[cardIndex].id == card.id
      {
        return cardIndex
      }
    }
    return 0
  }
  
  struct Card: Identifiable {
    var isFaceUp: Bool
    var isMatched: Bool
    var cardContent: CardContent
    let id: UUID = UUID()
  }
  
}
