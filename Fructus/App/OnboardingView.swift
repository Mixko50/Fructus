//
//  OnboardingView.swift
//  Fructus
//
//  Created by Mixko on 13/8/2564 BE.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        TabView{
            ForEach (fruits[0...fruits.count-1]) {item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
//        .padding(.vertical, 10)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
