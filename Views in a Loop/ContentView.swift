//
//  ContentView.swift
//  Views in a Loop
//
//  Created by Franco Rodrigues on 10/9/21.
//

import SwiftUI

struct ContentView: View {
    let Fruits = ["Apple", "Grapes", "Kiwi"]
    @State private var selectedFruits = 0
    
    var body: some View {
        VStack {
            Picker("Select your favorite fruit", selection: $selectedFruits) {
                ForEach(0 ..< Fruits.count) {
                    Text(self.Fruits[$0])
                }
            }
        Text("You chose was: \(Fruits[selectedFruits])")
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
