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
    @State var showingAlert2 : Bool = false
    @State var share : Bool = true
    var body: some View {
        
        NavigationView
        {
            VStack{
                VStack{
                    HStack{
                        Button(action:{
                            share.toggle()
                        })
                        {
                            Image("Quiz1")
                        }
                        Button(action:{
                            share.toggle()
                        })
                        {
                            Image("Quiz2")
                        }
                    }
                    HStack{
                        Button(action:{
                            share.toggle()
                        })
                        {
                            Image("Quiz3")
                        }
                        Button(action:{
                            share.toggle()
                        })
                        {
                            Image("Quiz4")
                        }
                    }
                }
                
                    .toolbar
                {
                    ToolbarItemGroup(placement: .navigationBarTrailing)
                    {
                        Button(action:
                                {
                                    showingAlert2 = true
                               })
                        {
                            Image(systemName: "square.and.arrow.up")
                        }
                        .alert(isPresented: $showingAlert2)
                            {
                                Alert(
                                    title: Text("Sharing function disabled"),
                                    message: Text("The sharing function is disabled in this version of the app."),
                                    dismissButton: .default(Text("Ok"))
                                )
                            }
                        .disabled(share)
                        Button(action:
                                {
                                   showingAlert = true
                               })
                        {
                            Image(systemName: "text.badge.plus")
                        }
                               .alert("Name quiz", isPresented: $showingAlert, actions: {
                                   // Any view other than Button would be ignored
                                   TextField("This function doesn't work!", text: .constant(""))
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
