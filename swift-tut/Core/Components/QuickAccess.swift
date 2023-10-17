//
//  QuickAccess.swift
//  swift-tut
//
//  Created by Darkwa John on 17/10/2023.
//

import SwiftUI

struct QuickAccess<Content: View>: View {
     var icon: String
     var action: String
     var name: String
    var destination: Content
    
    var body: some View {
        NavigationLink(destination: destination) {
            VStack(alignment: .leading, spacing: 5){
                Image(systemName: icon)
                VStack(alignment: .leading) {
                    Text(action)
                    Text(name)
                }
                
            }
          
        }
        .frame(width: 110, height: 100)
        .foregroundColor(Color(hex:"f610b0d"))
        .background(Color(hex: "ff3e9e9"))
        .cornerRadius(12)
    }
}

//struct QuickAccess_Previews: PreviewProvider {
//    static var previews: some View {
//        QuickAccess()
//    }
//}
