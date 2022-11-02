//
//  QuestionListView.swift
//  The Arrengers
//
//  Created by Alessia Pauciullo on 27/10/22.
//

import SwiftUI

struct saveData: Identifiable {
    let id = UUID()
    let name: String
}

struct QuestionView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @Binding var saving2: Bool    
    
    @State private var writeText : [String] = ["","","","",""]
    
    let saveDone: saveData
    let saveDone1: saveData
    let saveDone2: saveData
    let saveDone3: saveData
    let saveDone4: saveData
    
    var body: some View {
        NavigationStack
        {
            
            
            VStack (spacing: 20){

                
                Text ("Fill out the quiz by entering the questions and multiple answers, also indicating the correct answer by clicking on the check.")
                    .padding()
                VStack (spacing:15){
                    HStack {
                        TextField ("Question", text: $writeText[0])
                            .fontWeight(.bold)
                            .padding(.leading,20)
                    }
                    Divider()
                    ZStack {
                        
                        VStack {
                            TextField ("Correct answer", text:$writeText[1] )
                                .foregroundColor(.green)
                                .padding(.leading,25)
                            Divider()
                            TextField ("Wrong answer", text: $writeText[2])
                                .padding(.leading,25)
                            Divider()
                            TextField ("Wrong answer", text: $writeText[3])
                                .padding(.leading,25)
                            Divider()
                            TextField ("Wrong answer", text: $writeText[4])
                                .padding(.leading,25)
                        }
                    }
                }
                ZStack (alignment: .center){
                    Button (action:{
                        saving2.toggle()
                        self.mode.wrappedValue.dismiss()
                    })
                    {
                        ZStack
                        {
                            Text ("Save")
                            Image (systemName: "button")
                                .frame(width: 341.0,height: 40.0)
                            Image (systemName:"square.and.arrow.down")
                                .padding(.trailing,60)
                        }
                    }
                }
                .padding()
                .buttonStyle(.borderedProminent)
                Spacer()
                
            }
            //.frame(width: 350.0, height: 250.0)
            //.overlay(RoundedRectangle (cornerRadius: 20).stroke(lineWidth: 0.5))
            .navigationTitle("Question")
        }
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(saving2: .constant(true), saveDone: salvataggio, saveDone1: salvataggio1, saveDone2: salvataggio2, saveDone3: salvataggio3, saveDone4: salvataggio4)
    }
    
}
