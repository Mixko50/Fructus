//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Mixko on 24/8/2564 BE.
//

import SwiftUI

struct FruitHeaderView: View {
    //Mark: Properties
    
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    //Mark: Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomLeading)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
