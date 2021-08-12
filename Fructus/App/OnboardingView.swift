//
//  OnboardingView.swift
//  Fructus
//
//  Created by Mixko on 13/8/2564 BE.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach (0..<5) {item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
//        .padding(.vertical, 10)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
