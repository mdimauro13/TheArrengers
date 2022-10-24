//
//  ContentView.swift
//  TA
//
//  Created by Alessia Pauciullo on 21/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            QuestionEditorView()
                .badge(0)
                .tabItem {
                    Label("Question Editor", systemImage: "square.and.pencil")
                }
            QuizCollectionView()
                .tabItem {
                    Label("Quiz Collection", systemImage: "rectangle.portrait.on.rectangle.portrait")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
