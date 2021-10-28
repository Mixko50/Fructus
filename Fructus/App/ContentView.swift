//
//  ContentView.swift
//  Fructus
//
//  Created by Mixko on 11/8/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruit: [Fruit] = fruitData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action : {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }.sheet(isPresented: $isShowingSettings) {
                SettingView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
