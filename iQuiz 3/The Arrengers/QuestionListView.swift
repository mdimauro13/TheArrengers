//
//  QuestionList.swift
//  The Arrengers
//
//  Created by Gregorio Guarino on 28/10/22.
//

import SwiftUI

struct QuestionListView: View
    {
        @State var saving: Bool = false
        @State private var showDetails = false
        let saveDone: saveData
        let saveDone1: saveData
        let saveDone2: saveData
        let saveDone3: saveData
        let saveDone4: saveData
        var writeText : [String] = ["","","","",""]

    
        var body: some View
            {
                NavigationStack
                    {
                        ScrollView{
                            VStack (alignment: .leading, spacing: 15)
                            {
                                Text("")
                                Divider()
                                Text ("\(saveDone.name)")
                                Divider()
                                Text ("\(saveDone1.name)")
                                Divider()
                                Text ("\(saveDone2.name)")
                                Divider()
                                if (saving == true)
                                {
                                    Text ("\(saveDone3.name)")
                                    Divider()
                                }
                            }
                            
                        }
                        .toolbar
                            {
                                ToolbarItemGroup(placement: .navigationBarTrailing)
                                {
                                    NavigationLink("",destination:QuestionView(saving2: $saving, saveDone: salvataggio, saveDone1: salvataggio1, saveDone2: salvataggio2, saveDone3: salvataggio3, saveDone4: salvataggio4),isActive: $showDetails).isDetailLink(false)
                                    Button(action:{
                                        showDetails.toggle()
                                        })
                                        {
                                            Image(systemName: "plus")
                                            .padding(.leading)
                                        }
                                    
                                        
                                }
                            }
                        Spacer()
                        .navigationTitle("Questions List")

                    }
            }
        struct QuestionListView_Previews: PreviewProvider
            {
                static var previews: some View
                    {
                        QuestionListView(saveDone: salvataggio, saveDone1: salvataggio1, saveDone2: salvataggio2, saveDone3: salvataggio3, saveDone4: salvataggio4)
                    }
            }
    }
