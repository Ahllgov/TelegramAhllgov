//
//  AddContactView.swift
//  TelegramAhllgov
//
//  Created by Магомед Ахильгов on 15.09.2021.
//

import SwiftUI

struct AddContactView: View {
    
    @State var addFirstname = ""
    @State var addLastname = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Cancel")
                })
                Spacer()
                Text("Contacts")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                Spacer()
                Button(action: {}, label: {
                    Text("Add")
                })
            }
            .padding()
            .background(Color.gray.opacity(0.1)
            .ignoresSafeArea())
            HStack{
                Circle()
                    .frame(width: 70, height: 70)
                    .foregroundColor(Color.gray.opacity(0.1))
                    .padding()
                    .background(
                        Text("C")
                            .font(.system(size: 30).bold()
                            ).foregroundColor(.blue))
                VStack{
                    TextField("Firstname", text: $addFirstname)
                        .foregroundColor(Color.black)
                    Divider()
                    TextField("Lastname", text: $addLastname)
                        .foregroundColor(Color.black)
                }
            }
            VStack(alignment: .leading ,spacing: 0){
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "minus")
                            .font(.system(size: 15).weight(Font.Weight.bold))
                            .foregroundColor(.white)
                            .background(Color.red.clipShape(Circle(), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/).frame(width: 25, height: 25))
                    })
                    Text("number")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal, 10)
                    Divider()
                    Spacer()
                }
                .frame(height: 51)
                Divider()
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "plus")
                            .font(.system(size: 15).weight(Font.Weight.bold))
                            .foregroundColor(.white)
                            .background(Color.blue.clipShape(Circle(), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/).frame(width: 25, height: 25))
                    })
                    Text("another number")
                        .foregroundColor(.blue)
                        .padding(.horizontal, 10)
                }
                .frame(height: 51)
            }
            .padding()
            Spacer()
            
        }
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactView()
    }
}
