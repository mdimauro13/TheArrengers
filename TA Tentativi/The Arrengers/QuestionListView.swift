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

struct QuestionListView: View {
    
    
    @State private var saving: Bool = false
    @State private var saving2: Bool = false
    
    
    @State private var writeText : [String] = ["","","","",""]
    
    let saveDone: saveData
    let saveDone1: saveData
    let saveDone2: saveData
    let saveDone3: saveData
    let saveDone4: saveData
    
    var body: some View {
        VStack (alignment:.center,spacing: 15){
            Text("Question")
                .font(.system(size:25))
                .bold()
                .padding(.trailing,250)
            
            Text ("Fill out the quiz by entering the questions and multiple answers, also indicating the correct answer by clicking on the check.")
                .padding()
            VStack (spacing:5){
                HStack {
                    TextField ("Question", text: $writeText[0])
                        .padding(.leading,20)
                }
                Divider()
                ZStack {
                    
                    VStack {
                        TextField ("Write correct answer ", text:$writeText[1] )
                            .foregroundColor(Color.green)
                            .padding(.leading,25)
                        Divider()
                        TextField ("Answer", text: $writeText[2])
                            .padding(.leading,25)
                        Divider()
                        TextField ("Answer", text: $writeText[3])
                            .padding(.leading,25)
                        Divider()
                        TextField ("Answer", text: $writeText[4])
                            .padding(.leading,25)
                    }
                }
            }
            ZStack (alignment: .center){
                Button {
                    saving = true
                    
                } label: {
                    ZStack {
                        Text ("Save")
                        Image (systemName: "button")
                            .frame(width: 341.0,height: 40.0)
                        Image (systemName:"square.and.arrow.down")
                            .padding(.trailing,60)
                    }
                }
            }   .padding()
                .buttonStyle(.borderedProminent)
            VStack (alignment:.leading,spacing:15){
                Text ("List of questions")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.trailing,225)
                Text ("\(saveDone.name)")
                Divider()
                Text ("\(saveDone1.name)")
                Divider()
                Text ("\(saveDone2.name)")
                Divider()
                if (saving == true ) {
                    Text ("\(saveDone3.name)")
                    Divider()
                }
                
                
                //                Text ("Question 1")
                //                    .padding(.trailing,230)
                //                Divider()
                //                Text ("Question 1")
                //                    .padding(.trailing,230)
                //                Divider()
                //                Text ("Question 1")
                //                    .padding(.trailing,230)
                //                Divider()
            }.padding()
            Spacer()
            
        }
        //.frame(width: 350.0, height: 250.0)
        //.overlay(RoundedRectangle (cornerRadius: 20).stroke(lineWidth: 0.5))
    }
}

struct QuestionListView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionListView(saveDone:salvataggio,saveDone1: salvataggio1,saveDone2: salvataggio2,saveDone3:salvataggio3,saveDone4:salvataggio4)
    }
    
}
