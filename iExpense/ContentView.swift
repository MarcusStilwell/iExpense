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
    @State private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Marcus")
        }
    }
}

struct SecondView: View {
    var name: String
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
