//
//  FlashcardView.swift
//  Flashcard
//
//  Created by Lê Nguyễn on 13/5/25.
//

import SwiftUI

struct FlashcardView: View {
    let flashcard: Flashcard
    @State private var isShowingAnswer = false
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .shadow(radius: 10)
                
                VStack {
                    Text(isShowingAnswer ? flashcard.answer : flashcard.question)
                        .font(.title)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        withAnimation {
                            isShowingAnswer.toggle()
                        }
                    }) {
                        Text(isShowingAnswer ? "Show Question" : "Show Answer")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                .padding()
            }
            .frame(height: 300)
            .padding()
            
            Spacer()
        }
    }
}
