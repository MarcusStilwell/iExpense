//
//  ContentView.swift
//  iExpense
//
//  Created by Marcus Stilwell on 10/21/21.
//

import SwiftUI

class User: ObservableObject{
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ContentView: View {
    @ObservedObject var user = User()

    var body: some View {
        Button("Show Sheet") {
            // show the sheet
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
