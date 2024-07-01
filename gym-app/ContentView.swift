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
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color(red:1.0, green: 0.7843, blue: 0.5765))
                                    .cornerRadius(40)
                                    .frame(width: 145.0, height: 138.0)
                                VStack{
                                    Image(systemName: "dumbbell.fill")
    //                                    .resizable()
    //                                    .aspectRatio(contentMode: .fit)
                                    Text("")
                                    Text("Equipment")
                                        .font(.title3)
                                    Text("Information")
                                        .font(.title3)
                                }
                                
                                    
                            }
                                
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(red:1.0, green: 0.7843, blue: 0.5765))
                                    .cornerRadius(40)
                                    .frame(width: 145.0, height: 138.0)
                                VStack{
                                    Image(systemName: "figure.socialdance")
                                    Text("")
                                     Text("Workout")
                                         .font(.title3)
                                     Text("Buddy")
                                         .font(.title3)
                                }
                            }
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(red:1.0, green: 0.7843, blue: 0.5765))
                                    .cornerRadius(40)
                                    .frame(width: 145.0, height: 138.0)
                                VStack{
                                    Image(systemName: "pencil.and.list.clipboard")
                                    Text("")
                                     Text("Workout")
                                         .font(.title3)
                                     Text("Log")
                                         .font(.title3)
                                }
                            }
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(red:1.0, green: 0.7843, blue: 0.5765))
                                    .cornerRadius(40)
                                    .frame(width: 145.0, height: 138.0)
                                VStack{
                                    Image(systemName: "megaphone.fill")
                                    Text("")
                                     Text("Updates /")
                                         .font(.title3)
                                     Text("Postings")
                                         .font(.title3)
                                }
                            }
                            Spacer()
                        }
                        Spacer()
                        HStack{
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(red:1.0, green: 0.7843, blue: 0.5765))
                                    .cornerRadius(40)
                                    .frame(width: 145.0, height: 138.0)
                                VStack{
                                    Image(systemName: "rectangle.and.hand.point.up.left.fill")
                                    Text("")
                                     Text("Room")
                                         .font(.title3)
                                     Text("Booking")
                                         .font(.title3)
                                }
                            }
                            Spacer()
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(red:1.0, green: 0.7843, blue: 0.5765))
                                    .cornerRadius(40)
                                    .frame(width: 145.0, height: 138.0)
                                VStack{
                                    Image(systemName: "ellipsis")
                                    Text("")
                                     Text("Others")
                                         .font(.title3)
                                }
                            }
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
