//
//  ContentView.swift
//  Interactive UI
//
//  Created by scholar on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    
  @State private var name = ""
    @State private var titleText = "Type 'mango'and submit for a fun fact!"
    @State private var presentAlert = false
    
    var body: some View {
        VStack(spacing:100) {
            Text(titleText)
                .font(.title)
            TextField("Type mango here...", text: $name)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Button("Submit") {
                titleText = "Mangos are amazing"
                presentAlert = true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
        }
        .padding()
        .alert("The oldest mango tree has been around for centuries :O ",isPresented:$presentAlert, actions:{})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
