//
//  QuestionEditorView.swift
//  TA
//
//  Created by Alessia Pauciullo on 24/10/22.
//

import SwiftUI

struct QuestionEditorView: View {
    var body: some View {
       
        NavigationView
        {
            NavigationLink(destination: QuizCollectionView())
            {
                Image(systemName:"plus")
                    .frame(width: 20, height: 20, alignment: .leading)
                    .multilineTextAlignment(.leading)
            }
            .navigationTitle("Question Editor")
        }
    }
}

struct QuestionEditorView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionEditorView()
    }
}
