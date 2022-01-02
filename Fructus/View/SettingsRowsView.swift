//
//  SettingsRowsView.swift
//  Fructus
//
//  Created by Mixko on 30/10/2564 BE.
//

import SwiftUI

struct SettingsRowsView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                
                Text(name)
                Spacer()
                if (content != nil) {
                    Text(content!).foregroundColor(Color.gray)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string:"https://\(linkDestination!)")!).foregroundColor(.gray)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowsView(name: "Developer", content: "Mixko")
            .preferredColorScheme(.light)
    }
}
