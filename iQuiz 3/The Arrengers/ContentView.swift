//
//  ContentView.swift
//  The Arrengers
//
//  Created by Alessia Pauciullo on 25/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        TabView {
            QuizCollectionView()
                .tabItem {
                    Label("Quiz Collection", systemImage: "rectangle.portrait.on.rectangle.portrait")
                }
            QuestionEditorView()
                .tabItem {
                    Label("Question Editor", systemImage: "square.and.pencil")
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
