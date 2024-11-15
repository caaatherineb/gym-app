//
//  ContentView.swift
//  gym-app
//
//  Created by Catherine Byen on 6/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.presentationMode) var presentationMode

    
  init() {
      // Set the tab bar background color to orange
      let appearance = UITabBarAppearance()
    
      appearance.backgroundColor = UIColor(red: 0.1, green: 0.3, blue: 0.8, alpha: 1.0)
      
      UITabBar.appearance().standardAppearance = appearance
      
      
      // For iOS 15 and above to support scrollEdgeAppearance
      if #available(iOS 15.0, *) {
        UITabBar.appearance().scrollEdgeAppearance = appearance
      }
    }
    
    
  @State private var selectedTab = 0
    
  var body: some View {
    TabView(selection: $selectedTab) {
        
      NavigationView {
        Home()
      }
      .tabItem {
          Label("Home", systemImage: "gear")
      }
      .tag(0)
        
        
      NavigationView {
        WorkoutBuddy()
          .navigationTitle("Workout Buddy")
          .toolbar {
              ToolbarItem(placement: .navigationBarTrailing) {
                  Button(action: {
                      selectedTab = 0
                  }) {
                      Image(systemName: "xmark.circle")
                          .foregroundColor(.black)
                  }
              }
          }
      }
      .tabItem {
        Label("Workout Buddy", systemImage: "gear")
      }
      .tag(1)
        
        
      NavigationView {
        EquipmentInfo()
          .navigationTitle("Equipment")
          .toolbar {
              ToolbarItem(placement: .navigationBarTrailing) {
                  Button(action: {
                      selectedTab = 0
                  }) {
                      Image(systemName: "xmark.circle")
                          .foregroundColor(.black)
                  }
              }
          }
      }
      .tabItem {
        Label("Equip", systemImage: "gear")
      }
      .tag(2)
        
        
      NavigationView {
        WorkoutLog()
          .navigationTitle("Workout Log")
          .toolbar {
              ToolbarItem(placement: .navigationBarTrailing) {
                  Button(action: {
                      selectedTab = 0
                  }) {
                      Image(systemName: "xmark.circle")
                          .foregroundColor(.black)
                  }
              }
          }
      }
      .tabItem {
        Label("Log", systemImage: "doc.text")
      }
      .tag(3)
        
        
      NavigationView {
        Updates()
          .navigationTitle("Updates")
          .toolbar {
              ToolbarItem(placement: .navigationBarTrailing) {
                  Button(action: {
                      selectedTab = 0
                  }) {
                      Image(systemName: "xmark.circle")
                          .foregroundColor(.black)
                  }
              }
          }
      }
      .tabItem {
        Label("Updates", systemImage: "bell")
      }
      .tag(4)
        
        
      NavigationView {
        RoomBooking()
          .navigationTitle("Room Booking")
          .toolbar {
              ToolbarItem(placement: .navigationBarTrailing) {
                  Button(action: {
                      selectedTab = 0
                  }) {
                      Image(systemName: "xmark.circle")
                          .foregroundColor(.black)
                  }
              }
          }
      }
      .tabItem {
        Label("Booking", systemImage: "calendar")
      }
      .tag(5)
        
        
      NavigationView {
        Others()
          .navigationTitle("Others")
      }
      .tabItem {
        Label("Others", systemImage: "ellipsis")
      }
      .tag(6)
      .accentColor(.blue)
    }
  }
}


struct Home: View{
  @State public var showAnnouncement = false
  @Environment(\.presentationMode) var presentationMode
  var body: some View {

    // FIX SO THAT IT IS LINKED TO FIRST ITEM OF ANNOUNCEMENTS
    let latestAnnouncement = "New Gym Hours! Now open from 5 AM to 10 PM daily."
      
    VStack {
      ZStack {
        // Rounded Rectangle
        RoundedRectangle(cornerRadius: 25)
          .fill(Color.blue) // Background color for the rectangle
          .frame(width: 350, height: 270) // Size of the rectangle
          .position(x: 200, y: 150)
        // Text overlay
        Text("Welcome to Home")
          .font(.title)
          .foregroundColor(.white)
      }
        
      ZStack{
        RoundedRectangle(cornerRadius: 25)
          .fill(Color.blue) // Background color for the rectangle
          .frame(width: 120, height: 120) // Size of the rectangle
          .position(x: 100, y: 190)
      }
        
      ZStack{
        RoundedRectangle(cornerRadius: 25)
          .fill(Color.blue) // Background color for the rectangle
          .frame(width: 120, height: 120) // Size of the rectangle
          .position(x: 300, y: 10)
      }
        
      // Announcements Snippet
      RoundedRectangle(cornerRadius: 25)
        .fill(Color.blue.opacity(0.1)) // Background color for the snippet
        .frame(width: 350, height: 250)// Adjust height to fit content
        .overlay(
          HStack {
            VStack(alignment: .leading) {
              Text("Latest Announcement")
                .font(.headline)
                .foregroundColor(.blue)
              Text(latestAnnouncement)
                .font(.subheadline)
                .foregroundColor(.black)
                .lineLimit(2) // Limit text to 2 lines
            }
            Spacer()
            Image(systemName: "chevron.right")
              .foregroundColor(.blue)
          }
            .padding()
        )
        .position(x:200, y:40)
        .onTapGesture {
          showAnnouncement = true
        }
      Spacer()
    }
  }
}

// FIX: need assets
struct EquipmentInfo: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
                // List of equipment cards
        List {
            EquipmentCardView(equipment: equipment1)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment2)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment3)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment4)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment5)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment6)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment7)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment8)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment9)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment10)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment11)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment12)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment13)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment14)
                .listRowSeparator(.hidden)
            
            EquipmentCardView(equipment: equipment15)
                .listRowSeparator(.hidden)
        }
            .listStyle(.plain)
    }
}

struct WorkoutBuddy: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
        }
    }
}


struct WorkoutLog: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
        }
    }
}


struct Updates: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
        }
    }
}


struct RoomBooking: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack{
                //TITLE
                Spacer()
                ZStack{
                    
                    Rectangle()
                        .foregroundColor(.orange)
                        .cornerRadius(20)
                        .frame(height: 60.0)
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

struct Others: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            
        }
    }
}


#Preview {
    ContentView()
    //RoomBooking()
    //WorkoutLog()
    //EquipmentInfo()
}
