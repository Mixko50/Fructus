//
//  FruitCardView.swift
//  Fructus
//
//  Created by Mixko on 12/8/2564 BE.
//

import SwiftUI

struct FruitCardView: View {
    var fruit: Fruit
    ///MARK: - Properties
    @State private var isAnimating: Bool = false
    ///MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                ///FRUIT: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                ///Fruit : Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 8, x: 0, y: 2)
                ///Fruit : Headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16.0)
                    .frame(maxWidth: 480)
                ///Button : Start
                
                StartButtonView()
            }///VStack
        }///Zstack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .onDisappear() {
            isAnimating = false
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

    ///Mark - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
