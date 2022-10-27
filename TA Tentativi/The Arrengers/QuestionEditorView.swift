//
//  QuestionEditorView.swift
//  The Arrengers
//
//  Created by Alessia Pauciullo on 25/10/22.
//

import SwiftUI

let  salvataggio = saveData(name: "1. When the French Revolution started?")
let  salvataggio1 = saveData(name: "2. When the French Revolution ended?")
let  salvataggio2 = saveData(name: "3. What type of government did the Constitution of 1791 create?")
let  salvataggio3 = saveData(name: "4. What happened during the revolution?")
let  salvataggio4 = saveData(name: "5. What were the most important events?")

struct QuestionEditorView: View {
    @State private var searchText = "Search"
    @State var showingAlert : Bool = false
    @State private var folderCreation_array: [Folder] = Folder.get_all()
    @State private var textin: String = ""
    @State private var name = ""
    @FocusState private var nameIsFocused: Bool
    @State private var showDetails = false


    
    var body: some View {
        
        VStack(spacing: 0) {
            HStack {
                
                
                NavigationView
                {
                    ScrollView {
                        VStack {
                            
                            ForEach(folderCreation_array) { folder in
                                ZStack{
                                    Button{showDetails.toggle()
                                    }label: {
                                        ZStack{
                                            Image("folder")
                                                .resizable()
                                                .frame(width: 120, height: 120)
                                                .foregroundColor(.black)
                                                .padding()
                                            Text(folder.setname)
                                                .padding()
                                        }
                                    }
                                    NavigationLink("",destination:QuestionListView(saveDone: salvataggio,saveDone1:salvataggio1,saveDone2: salvataggio2,saveDone3: salvataggio3,saveDone4: salvataggio4),isActive: $showDetails)

                                }
                            }
                        }
                    } /* End Scroll View*/
                    
                    
                    .navigationTitle("Question Editor")
                    .toolbar
                    {
                        ToolbarItemGroup(placement: .navigationBarTrailing)
                        {
                            
                            Button(action:
                                    {
                                showingAlert = true
                            })
                            {
                                Image(systemName: "folder.badge.plus")
                            }
                            .alert("Name folder", isPresented: $showingAlert, actions: {
                                // Any view other than Button would be ignored
                                TextField("French Revolution", text: $textin)
                                Button("Create", action: {folderCreation_array.append(Folder(setname: textin, color: "black"))})
                                Button("Cancel", role: .cancel, action: {})
                            }, message: {
                                // Any view other than Text would be ignored
                                Text("Give a name to your folder")
                            }) /* End Alert*/
                            
                            .searchable(text: $name)
                            .focused($nameIsFocused)
                            
                            
                        }
                        
                    } /* End ToolBar */
                    
                } /* End Navigation View */
            } /* End HStack */
            
            
        } /* End VStack */
    } /* End Body */
} /* End Content View*/


struct Folder: Identifiable {
    let id = UUID()
    let setname: String
    let color: String
    
    static func get_all() -> [Folder] {
        return []
    }
} /* End struc folder*/


struct QuestionEditorView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionEditorView()
    }
}
