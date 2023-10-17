//
//  QuickAccess.swift
//  swift-tut
//
//  Created by Darkwa John on 17/10/2023.
//

import SwiftUI

struct QuickAccess: View {
     var icon: String;
     var action: String;
     var name: String;
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 5){
                Image(systemName: icon)
                VStack(alignment: .leading) {
                    Text(action)
                    Text(name)
                }
                
            }
            .frame(width: 120, height: 100)
            .background(Color(hex: "ff3e9e9"))
            .cornerRadius(12)
        }
    }
}

//struct QuickAccess_Previews: PreviewProvider {
//    static var previews: some View {
//        QuickAccess()
//    }
//}
