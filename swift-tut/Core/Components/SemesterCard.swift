//
//  SemesterCard.swift
//  swift-tut
//
//  Created by Darkwa John on 17/10/2023.
//

import SwiftUI

struct SemesterCard: View {
    var year: String
    var date: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(year)
                .foregroundColor(Color(hex:"f610b0d"))
                .font(.title3)
                    .padding()
            Spacer()
            HStack {
                Spacer()
                Text(date)
                    .foregroundColor(Color(hex:"f610b0d"))
                    .padding(.horizontal)
                    .font(.title2)
                    
            }
                   
            Spacer()
        }
        .frame(width: 350, height: 120)
        .background(Color(hex: "ff3e9e9"))
        .cornerRadius(15)
        .padding([.horizontal])
    }
}

//struct SemesterCard_Previews: PreviewProvider {
//    static var previews: some View {
//        SemesterCard()
//    }
//}
