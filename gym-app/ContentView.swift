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
                //FACILITY HOURS ORANGE BOX
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
                            VStack{
                                Text("Sun")
                                Text("Mon")
                                Text("Tues")
                                Text("Wed")
                                Text("Thurs")
                                Text("Fri")
                                Text("Sat")
                            }
                            let weekdayTime: String = "6:00 AM - 11:00 PM"
                            let weekendTime: String = "9:00 AM - 9:00 PM"
                            VStack{
                                Text(weekendTime)
                                Text(weekdayTime)
                                Text(weekdayTime)
                                Text(weekdayTime)
                                Text(weekdayTime)
                                Text(weekdayTime)
                                Text(weekendTime)
                            }
                        }
                        //.padding(.top)
                    }
                    
                }
                
                Spacer()
                Spacer()
                Spacer()
                
                // DARK BLUE BOX WITH BUTTONS
                ZStack{
                    Rectangle()
                        .padding(.bottom, 10.0)
                        .foregroundColor(Color(red: 0, green: 0.329, blue: 0.604))
                        .cornerRadius(40)
                        .ignoresSafeArea()
                    
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                            //buttons
                            Button(action: {
                                print("open to equipment info page")
                            }, label:{
                                VStack{
                                    Image(systemName: "dumbbell.fill")
                                    Text("Equipment \n Information".uppercased())
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .padding()
                                        .padding(.horizontal, 20)
                                        
                                }
                                .background(
                                    Color(red:1.0, green: 0.7843, blue: 0.5765)
                                        .cornerRadius(40)
                                        .frame(width: 145.0, height: 138.0))
                                .foregroundColor(.black)
                            })
                            Spacer()
                            Button(action: {
                                print("open to workout buddy page")
                            }, label:{
                                VStack{
                                    Image(systemName: "figure.socialdance")
                                    Text("Workout \n Buddy".uppercased())
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .padding()
                                        .padding(.horizontal, 20)
                                        
                                }
                                .background(
                                    Color(red:1.0, green: 0.7843, blue: 0.5765)
                                        .cornerRadius(40)
                                        .frame(width: 145.0, height: 138.0))
                                .foregroundColor(.black)
                            })
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Spacer()
                            Button(action: {
                                print("open to workout log page")
                            }, label:{
                                VStack{
                                    Image(systemName: "pencil.and.list.clipboard")
                                    Text("Workout \n Log".uppercased())
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .padding()
                                        .padding(.horizontal, 20)
                                        
                                }
                                .background(
                                    Color(red:1.0, green: 0.7843, blue: 0.5765)
                                        .cornerRadius(40)
                                        .frame(width: 145.0, height: 138.0))
                                .foregroundColor(.black)
                            })
                            Spacer()
                            Button(action: {
                                print("open to updates/postings page")
                            }, label:{
                                VStack{
                                    Image(systemName: "megaphone.fill")
                                    Text("Updates \n postings".uppercased())
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .padding()
                                        .padding(.horizontal, 20)
                                        
                                }
                                .background(
                                    Color(red:1.0, green: 0.7843, blue: 0.5765)
                                        .cornerRadius(40)
                                        .frame(width: 145.0, height: 138.0))
                                .foregroundColor(.black)
                            })
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Spacer()
                            Button(action: {
                                print("open to room bookings page")
                            }, label:{
                                VStack{
                                    Image(systemName: "rectangle.and.hand.point.up.left.fill")
                                    Text("Room \n booking".uppercased())
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .padding()
                                        .padding(.horizontal, 20)
                                        
                                }
                                .background(
                                    Color(red:1.0, green: 0.7843, blue: 0.5765)
                                        .cornerRadius(40)
                                        .frame(width: 145.0, height: 138.0))
                                .foregroundColor(.black)
                            })
                            Spacer()
                            Button(action: {
                                print("open to room bookings page")
                            }, label:{
                                VStack{
                                    Image(systemName: "ellipsis")
                                    Text("others".uppercased())
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .padding()
                                        .padding(.horizontal, 20)
                                        
                                }
                                .background(
                                    Color(red:1.0, green: 0.7843, blue: 0.5765)
                                        .cornerRadius(40)
                                        .frame(width: 145.0, height: 138.0))
                                .foregroundColor(.black)
                            })
                            Spacer()
                        }
                        
                    
                    }
                    
                }
                
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
