//
//  AddView.swift
//  TodoList
//
//  Created by Kelvin Abaidoo on 30/01/2024.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText:String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                    .cornerRadius(10)
                
                Button(action:saveButtonPressed,label: {
                    Text("Save".uppercased())
                        .frame(height: 55)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                })
            }
            .padding(14)
            
        }
        .navigationTitle("Add an item 🖊️")
    }
    
    func saveButtonPressed(){
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate()-> Bool{
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
    
}
