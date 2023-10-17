//
//  ContentView.swift
//  swift-tut
//
//  Created by Darkwa John on 16/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
            VStack{
                HStack {
                    Text("Home")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                    Image(systemName: "bell")
                    Image(systemName: "line.3.horizontal")
                        
                }
                .foregroundColor(.white)
                .padding()
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 30){
                        HStack(){
                            VStack(alignment: .leading) {
                                Text("Good Morning,")
                                Text("John Darkwa")
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(Color(hex:"f610b0d"))
                            Spacer()
                            Image("profile_1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                        }
                        VStack(alignment: .leading){
                            Text("Your next class")
                                .font(.title3)
                                .foregroundColor(.gray)
                            
                            VStack{
                                Text("Your next class will appear here")
                            }
                            .frame(width: 350, height: 170)
                            .background(Color(hex: "ff3e9e9"))
                            .cornerRadius(15)
                        }
                        VStack(alignment: .leading){
                            Text("What would you like to do?")
                                .font(.title3)
                                .foregroundColor(.gray)
                            HStack{
                                QuickAccess(icon: "chart.bar", action: "Check", name: "Results")
                                QuickAccess(icon: "menucard", action: "Pay", name: "Fees")
                                QuickAccess(icon: "wallet.pass", action: "Register", name: "Courses")
                            }
                            
                          
                        }
                        VStack(alignment: .leading,spacing: 15){
                            Text("What's trending?")
                                .font(.title3)
                                .foregroundColor(.gray)
                                .padding(.bottom)
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
                    .padding()
                    .background(.white, in:
                        RoundedCornersShape(corners: [.topLeft, .topRight], radius: 30)
                    
                    )
                }
                .padding(.horizontal,20)
                Spacer()
            }
            .background(Color(hex: "ff6b0b02"))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted))
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            let red = Double((hexNumber & 0xff0000) >> 16) / 255.0
            let green = Double((hexNumber & 0x00ff00) >> 8) / 255.0
            let blue = Double(hexNumber & 0x0000ff) / 255.0
            self.init(red: red, green: green, blue: blue)
            return
        }
        self.init(red: 0, green: 0, blue: 0)
    }
}


