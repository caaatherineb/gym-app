//
//  ContentView.swift
//  gym-app
//
//  Created by Catherine Byen on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0, green: 0.329, blue: 0.604).opacity(0.41).ignoresSafeArea()
            
            VStack{
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(red:1.0, green: 0.7843, blue: 0.5765))
                        .cornerRadius(40)
                        .frame(width: 250.0, height: 250.0)
                    VStack{
                        Text("Facility Hours")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                            .frame(alignment: .leading)
                        HStack{
                            Text("Sun")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .frame(alignment: .leading)
                            Text("   9:00 AM - 5:00 PM")
                        }
                        HStack{
                            Text("Mon")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .frame(alignment: .leading)
                            Text("   9:00 AM - 5:00 PM")
                        }
                        HStack{
                            Text("Tue")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .frame(alignment: .leading)
                            Text("   9:00 AM - 5:00 PM")
                        }
                        HStack{
                            Text("Wed")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .frame(alignment: .leading)
                            Text("   9:00 AM - 5:00 PM")
                        }
                        HStack{
                            Text("Thurs")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .frame(alignment: .leading)
                            Text("   9:00 AM - 5:00 PM")
                        }
                        HStack{
                            Text("Fri")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .frame(alignment: .leading)
                            Text("   9:00 AM - 5:00 PM")
                        }
                        HStack{
                            Text("Sat")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .frame(alignment: .leading)
                            Text("   9:00 AM - 5:00 PM")
                        }
                        
                    }
                    
                }
                
                Spacer()
                Spacer()
                Spacer()
                Rectangle()
                    .padding(.bottom, 10.0)
                    .foregroundColor(Color(red: 0, green: 0.329, blue: 0.604))
                    .cornerRadius(40)
                    .ignoresSafeArea()
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
