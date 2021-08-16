//
//  ContentView.swift
//  Fructus
//
//  Created by Mixko on 11/8/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var fruit: [Fruit] = fruitData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 5)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
