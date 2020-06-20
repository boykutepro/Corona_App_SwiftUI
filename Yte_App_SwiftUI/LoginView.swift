//
//  LoginView.swift
//  Yte_App_SwiftUI
//
//  Created by Thien Tung on 6/18/20.
//  Copyright © 2020 Thien Tung. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var phone = ""
    @State var password = ""
    @State var isShow = false
    
    var body: some View {
        
        VStack {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.green)
                .font(.system(size: 20))
                .kerning(3)
            Spacer()
            VStack (alignment: .leading){
                Text("Mobile Number")
                    .fontWeight(.regular)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.leading)
                
                TextField("", text: $phone)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(16)
                    .foregroundColor(Color.gray)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.green, lineWidth: 1))
                
                Text("Password")
                    .fontWeight(.regular)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.leading)
                
                ZStack {
                    if isShow {
                        TextField("", text: $password)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(16)
                            .background(RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.green, lineWidth: 1))
                    } else {
                        SecureField("", text: $password)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(16)
                            .background(RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.green, lineWidth: 1))
                    }
                    HStack {
                        Spacer()
                        Button(action: {
                            self.isShow = !self.isShow
                        }) {
                            Image(systemName: self.isShow ? "eye.slash.fill" : "eye.fill")
                                .padding(14)
                        }
                    }
                }
            }
            
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Login")
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 15, leading: 145, bottom: 15, trailing: 145))
                        .background(Color.green)
                        .cornerRadius(12)
                }
            .padding(EdgeInsets(top: 40, leading: 0, bottom: 10, trailing: 0))
            }
            
            HStack {
                
                Text("NewUser?")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(Color.green)
                    .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 0))
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Register here")
                        .underline()
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.green)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10))
                }
            }
            
            Spacer()
        }
        .padding(20)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
