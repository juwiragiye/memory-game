//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Janvier on 2022-02-25.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["💜", "💜", "💜", "💜", "💜", "💜", "💜",  "💜", "💜", "😑"]
    var body: some View {
      ScrollView {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
          ForEach(0..<emojis.count, id: \.self, content: { emoji in
                CardView( content: emojis[emoji])
                  .aspectRatio(1/2, contentMode: .fill)
            }
          )
       }
      }
        .foregroundColor(Color.brown)
        .padding(.horizontal)
    }
}

struct CardView: View {
  @State var isFaceUp = true
  var content: String
  var shape = RoundedRectangle(cornerRadius: 20.0)
  var body: some View {
    ZStack{
      
      if isFaceUp {
        shape
          .fill(.white)
        shape
          .strokeBorder(lineWidth: 3)
        Text(content)
       
      } else {
        shape
          .fill()
      }
        
    }
    .onTapGesture {
      isFaceUp.toggle()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
        .previewDevice("iPhone 13 mini")
    }
}
