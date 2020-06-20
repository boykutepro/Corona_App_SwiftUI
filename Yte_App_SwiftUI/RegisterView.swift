//
//  RegisterView.swift
//  Yte_App_SwiftUI
//
//  Created by Thien Tung on 6/20/20.
//  Copyright © 2020 Thien Tung. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    
    @State var phoneNumber = ""
    @State var addhaarNumber = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    var body: some View {
        VStack {
            Text("Register")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(Color.green)
                .padding(10)
            
          
            
            VStack (alignment: .leading) {
                Text("Phone Number")
                    .fontWeight(.regular)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.leading)
                
                TextField("", text: $phoneNumber)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(12)
                    .foregroundColor(Color.gray)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.green, lineWidth: 1))
                Text("Aadhaar Number")
                    .fontWeight(.regular)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.leading)
                
                TextField("", text: $addhaarNumber)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(12)
                    .foregroundColor(Color.gray)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.green, lineWidth: 1))
                Text("Password")
                    .fontWeight(.regular)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.leading)
                
                TextField("", text: $password)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(12)
                    .foregroundColor(Color.gray)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.green, lineWidth: 1))
                Text("Confirm Password")
                    .fontWeight(.regular)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.leading)
                
                TextField("", text: $confirmPassword)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(12)
                    .foregroundColor(Color.gray)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.green, lineWidth: 1))
                
//                Spacer()
            }
            .padding(.bottom, 20.0)
//            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Login")
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 15, leading: 145, bottom: 15, trailing: 145))
                    .background(Color.green)
                    .cornerRadius(12)
            }
            
            Text("By registering, you automatically accept the Terms & Policies of COVID - 19 app.")
                .fontWeight(.thin)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
                .padding(.top, 14.0)
                .font(.system(size: 14))
                .frame(width: 200)
            
            HStack {
                Text("Have an acount?")
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
            
           
        }
        .padding(20)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
