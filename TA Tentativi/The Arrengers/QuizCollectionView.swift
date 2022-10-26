//
//  QuizCollectionView.swift
//  The Arrengers
//
//  Created by Alessia Pauciullo on 25/10/22.
//

import SwiftUI

struct QuizCollectionView: View {
    @State private var searchText = "Search topic"
    @State var showingAlert : Bool = false
    var body: some View {
        
        NavigationView
        {
            VStack{
                VStack{
                    HStack{
                        Image("Quiz1")
                        Image("Quiz2")
                    }
                    HStack{
                        Image("Quiz3")
                        Image("Quiz4")
                    }
                }
                
                    .toolbar
                {
                    ToolbarItemGroup(placement: .navigationBarTrailing)
                    {
                    
                        Button(action:
                                {
                                   showingAlert = true
                               })
                        {
                            Image(systemName: "plus")
                        }
                               .alert("Name quiz", isPresented: $showingAlert, actions: {
                                   // Any view other than Button would be ignored
                                   TextField("es. Napoleon", text: .constant(""))
                                   Button("Create", action: {})
                                   Button("Cancel", role: .cancel, action: {})
                               }, message: {
                                   // Any view other than Text would be ignored
                                   TextField("TextField", text: .constant("Give a name to your quiz"))
                               })
                               .searchable(text: $searchText)
                        }
                        
                    }
                }
                
                .navigationTitle("Quiz Collection")
            }
            }
        
    }


struct QuizCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        QuizCollectionView()
    }
}
