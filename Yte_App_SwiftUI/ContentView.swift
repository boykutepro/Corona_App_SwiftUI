//
//  ContentView.swift
//  Yte_App_SwiftUI
//
//  Created by Thien Tung on 6/18/20.
//  Copyright © 2020 Thien Tung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            Image("y_te")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250, alignment: .center)
            
            Text("COVID - 19")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
                .padding(20)
            
            Text("Test booking app")
                .font(.body)
                .fontWeight(.light)
                .foregroundColor(Color.green)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
