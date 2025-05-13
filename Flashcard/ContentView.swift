//
//  ContentView.swift
//  Flashcard
//
//  Created by Lê Nguyễn on 13/5/25.
//

import SwiftUI

struct ContentView: View {
    // Sample flashcards data
    @State private var flashcards = [
        Flashcard(question: "What is the capital of France?", answer: "Paris"),
        Flashcard(question: "What is the largest planet in our solar system?", answer: "Jupiter"),
        Flashcard(question: "What is the chemical symbol for gold?", answer: "Au"),
        Flashcard(question: "Who painted the Mona Lisa?", answer: "Leonardo da Vinci"),
        Flashcard(question: "What is the square root of 144?", answer: "12")
    ]
    
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            Text("Flashcards")
                .font(.largeTitle)
                .bold()
                .padding()
            
            FlashcardView(flashcard: flashcards[currentIndex])
            
            HStack {
                Button(action: {
                    withAnimation {
                        currentIndex = (currentIndex - 1 + flashcards.count) % flashcards.count
                    }
                }) {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }
                .padding()
                .disabled(flashcards.count <= 1)
                
                Spacer()
                
                Text("\(currentIndex + 1) / \(flashcards.count)")
                    .font(.title2)
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        currentIndex = (currentIndex + 1) % flashcards.count
                    }
                }) {
                    Image(systemName: "arrow.right.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }
                .padding()
                .disabled(flashcards.count <= 1)
            }
            .padding()
            
            Button(action: {
                // Here you would implement adding new flashcards
                // For this simple example, we'll just add a placeholder card
                let newCard = Flashcard(question: "New Question \(flashcards.count + 1)", answer: "New Answer \(flashcards.count + 1)")
                flashcards.append(newCard)
            }) {
                Text("Add New Flashcard")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

// Preview for ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
