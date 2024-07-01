//
//  ContentView.swift
//  gym-app
//
//  Created by Catherine Byen on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            Color(red: 0, green: 0.329, blue: 0.604).opacity(0.41).ignoresSafeArea()
            
            VStack{
                HStack{
                    Text("home".uppercased())
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    Button(action: {print("open to settings")}, label: {
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .frame(width: 35, height: 35)
                    })
                    
                }.padding(.horizontal, 30)
                
                Spacer()
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
                                showSheet.toggle()
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
                            .fullScreenCover(isPresented: $showSheet, content: {
                                WorkoutLog()})
                            
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
                                showSheet.toggle()
                                
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
                            .fullScreenCover(isPresented: $showSheet, content: {
                                RoomBooking()})
                            
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


struct WorkoutLog: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack{

                // HEADER
                HStack(alignment: .top){
                    // X button
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    })
                    
                    Spacer()
                    
                    // SEARCH button
                    Button (action: {
                        print("search")
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red)
                    }).padding(.horizontal, 10)
                    
                    //ADD button
                    Button(action: {
                        print("add")
                    }, label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red)
                    })
                    
                    

                }.padding(.horizontal, 20)
            }
        }
    }
}

struct RoomBooking: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack{
                
                // X button to dismiss screen
                HStack{
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    })
                    Spacer()
                }.padding(.horizontal, 20)
                
                Spacer()
                Spacer()
                
                //TITLE
                ZStack{
                    Rectangle()
                        .foregroundColor(.orange)
                        .cornerRadius(40)
                        .frame(height: 120.0)
                        .padding(.horizontal, 20)
                    
                    Text("Room booking".uppercased())
                        .font(.title)
                    
                }
                
                // ROOMS
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        
                        
                        Button(action: {
                            print("open to athletic training area room resv page")
                        }, label:{
                            ZStack{
                                Image("carw-athletic")
                                    .resizable()
                                   .aspectRatio(contentMode: .fill)
                                   .frame(width: 145.0, height: 138.0, alignment: .topLeading)
                                   .border(.blue)
                                   .cornerRadius(40)
                                   .clipped()
                                Text("athletic training area".uppercased())
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                                    .padding(.horizontal, 20)
                            }
                        })
                        
                        Spacer()
                        Button(action: {
                            print("open to n&n practice gym resv page")
                        }, label:{
                            ZStack{
                                Image("carw-gymnasium")
                                    .resizable()
                                   .aspectRatio(contentMode: .fill)
                                   .frame(width: 145.0, height: 138.0, alignment: .topLeading)
                                   .border(.blue)
                                   .cornerRadius(40)
                                   .clipped()
                                Text("n&n \n practice gym".uppercased())
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                                    .padding(.horizontal, 20)
                            }
                        })
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        
                        
                        Button(action: {
                            print("open to voelkel gym room resv page")
                        }, label:{
                            ZStack{
                                Image("carw-voelkel")
                                    .resizable()
                                   .aspectRatio(contentMode: .fill)
                                   .frame(width: 145.0, height: 138.0, alignment: .topLeading)
                                   .border(.blue)
                                   .cornerRadius(40)
                                   .clipped()
                                Text("Voelkel \n Gym".uppercased())
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                                    .padding(.horizontal, 20)
                            }
                        })
                        
                        Spacer()
                        Button(action: {
                            print("open to studio 147 room resv page")
                        }, label:{
                            ZStack{
                                Image("carw-studio1")
                                    .resizable()
                                   .aspectRatio(contentMode: .fill)
                                   .frame(width: 145.0, height: 138.0, alignment: .topLeading)
                                   .border(.blue)
                                   .cornerRadius(40)
                                   .clipped()
                                Text("Studio \n 147".uppercased())
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                                    .padding(.horizontal, 20)
                            }
                        })
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        
                        
                        Button(action: {
                            print("open to ahmanson studio room resv page")
                        }, label:{
                            ZStack{
                                Image("carw-yoga")
                                    .resizable()
                                   .aspectRatio(contentMode: .fill)
                                   .frame(width: 145.0, height: 138.0, alignment: .topLeading)
                                   .border(.blue)
                                   .cornerRadius(40)
                                   .clipped()
                                Text("Ahmanson \n studio".uppercased())
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                                    .padding(.horizontal, 20)
                            }
                        })
                        
                        Spacer()
                        Button(action: {
                            print("open to conference room resv page")
                        }, label:{
                            ZStack{
                                Image("carw-conference")
                                    .resizable()
                                   .aspectRatio(contentMode: .fill)
                                   .frame(width: 145.0, height: 138.0, alignment: .topLeading)
                                   .border(.blue)
                                   .cornerRadius(40)
                                   .clipped()
                                Text("Conference \n Room".uppercased())
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                                    .padding(.horizontal, 20)
                            }
                        })
                        Spacer()
                    }
                    
                
                }
                
                
                
            }
        }
    }
}


#Preview {
    ContentView()
    //RoomBooking()
    //WorkoutLog()
}
