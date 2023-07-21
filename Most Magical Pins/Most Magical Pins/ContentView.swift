//
//  ContentView.swift
//  Most Magical Pins
//
//  Created by Jason Lamb on 6/16/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 15.0) {
            Spacer()
            Image("logo")
                .shadow(radius: 10)
                .padding(.bottom, 50)
            TextField("Email", text: $email)
                .padding()
                .cornerRadius(20.0)
                .background(.white)
                .foregroundColor(.purple)
            SecureField("Password", text: $password)
                .padding()
                .cornerRadius(15.0)
                .background(.white)
                .foregroundColor(.purple)
            Button(action: {}) {
                HStack {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                        .background(.white)
                        .cornerRadius(15.0)
                }
            }
            .padding()
            Spacer()
            Button(action: {}) {
                HStack {
                    Text("Don't have an account? Sign up")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .padding()
        }
        .padding()
        .background(
          LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
