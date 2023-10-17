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
            VStack(){
                Text("Select a semester")
                    .font(.title2)
                    .foregroundColor(Color(hex:"f610b0d"))
                    .padding(.top,20)
                Divider()
                ScrollView(showsIndicators: false){
                   SemesterCard(
                   year: "Year 3, Second Semester",
                   date: "2022/2023"
                   )
                   SemesterCard(
                   year: "Year 3, First Semester",
                   date: "2022/2023"
                   )
                   SemesterCard(
                   year: "Year 2, Second Semester",
                   date: "2021/2022"
                   )
                   SemesterCard(
                   year: "Year 2, First Semester",
                   date: "2021/2022"
                   )
                    SemesterCard(
                   year: "Year 1, Second Semester",
                   date: "2020/2021"
                   )
                   SemesterCard(
                   year: "Year 1, First Semester",
                   date: "2020/2021"
                   )
                   
                }
                .padding(20)
            }
            .background(.white)
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .background(Color(hex: "ff6b0b02").edgesIgnoringSafeArea(.top))
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
