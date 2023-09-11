//
//  ContentView.swift
//  sampleapp
//
//  Created by jenkins on 2023/09/11.
//

import SwiftUI

struct ContentView: View {
  @State private var userInput = ""
  @State private var isClicked = false

  var body: some View {
    VStack {
      Button(action: {
        self.isClicked = true;
      }) {
        Text("Click me")
      }.accessibilityIdentifier("Click me")

      if isClicked {
        Text("Hello Dogu!")
      } else {
        Text("Not clicked yet")
      }
      
      TextField("Enter Text", text: $userInput)
                      .padding()
                      .textFieldStyle(RoundedBorderTextFieldStyle()).accessibilityIdentifier("Enter Text")
      
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
