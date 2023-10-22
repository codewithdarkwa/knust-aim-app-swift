//
//  RegistrationView.swift
//  swift-tut
//
//  Created by Darkwa John on 17/10/2023.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 20){
            HStack {
                Text("Registration")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "bell")
                Image(systemName: "line.3.horizontal")
                    
            }
            .foregroundColor(.white)
            .padding()
            .background(Color(hex: "ff6b0b02"))
        
            VStack(alignment: .leading){
                Divider()
                Text("Online registration for semester 2, 2022/2023 between 08 May 2023, 08:00 and 21 May 2023, 23:59 GMT")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hex:"f610b0d"))
                    .padding(.top,30)
            }
            .padding(.horizontal)
            .frame(width: 350, height: 170)
            .background(Color(hex: "ff3e9e9"))
            .cornerRadius(15)
            .padding([.horizontal])
            
            HStack{
                VStack(alignment: .leading, spacing: 5){
                    Image(systemName: "book")
                    VStack(alignment: .leading) {
                        Text("Read \nInstructions")
                    }
                }
                .fontWeight(.semibold)
                .frame(width: 170, height: 100)
                .foregroundColor(Color(hex:"f610b0d"))
                .background(Color(hex: "ff3e9e9"))
                .cornerRadius(12)
                VStack(alignment: .leading, spacing: 5){
                    Image(systemName: "bell")
                    VStack(alignment: .leading) {
                        Text("Get \nRegistration Slip")
                            
                    }
                }
                .fontWeight(.semibold)
                .frame(width: 170, height: 100)
                .foregroundColor(Color(hex:"f610b0d"))
                .background(Color(hex: "ff3e9e9"))
                .cornerRadius(12)
            }
            .padding()
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
