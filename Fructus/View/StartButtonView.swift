//
//  StartButtonView.swift
//  Fructus
//
//  Created by Mixko on 12/8/2564 BE.
//

import SwiftUI

struct StartButtonView: View {
    ///Mark : Properties
    
    ///Mark: Body
    var body: some View {
        Button(action:{
            print("Exit the onboarding")
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10.0)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }///Button
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
