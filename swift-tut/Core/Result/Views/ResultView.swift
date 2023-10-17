//
//  ResultView.swift
//  swift-tut
//
//  Created by Darkwa John on 17/10/2023.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Results")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "bell")
                Image(systemName: "line.3.horizontal")
                    
            }
            .foregroundColor(.white)
            .padding(.horizontal)
            Spacer()
        }
        .background(Color(hex: "ff6b0b02").edgesIgnoringSafeArea(.top))
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
