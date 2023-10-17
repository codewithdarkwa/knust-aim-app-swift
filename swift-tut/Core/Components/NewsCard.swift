//
//  NewsCard.swift
//  swift-tut
//
//  Created by Darkwa John on 17/10/2023.
//

import SwiftUI

struct NewsCard: View {
    var body: some View {
        Image("image")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 350, height: 200)
            .background(.pink)
            .cornerRadius(15)
            
        Text("Kindly be informed that undergraduate admission forms for the KNUST 2023/2024 Academic year are available at various post offices, GCB, or can be purchased using the shortcode [*447*160#]")
            .padding([.top, .horizontal])
        
        HStack {
            Text("18 Aug 2023")
                .font(.footnote)
                .foregroundColor(.gray)
            .padding( .horizontal)
            Image(systemName: "share")
        }
    }
}

struct NewsCard_Previews: PreviewProvider {
    static var previews: some View {
        NewsCard()
    }
}
