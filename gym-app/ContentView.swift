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
                Others()
                    .navigationTitle("Account Information")
            }
            .tabItem {
                Label("Account Info", systemImage: "person")
            }
            .tag(6)
            .accentColor(.blue)
        }
    }
}

struct Home: View{
    @State public var showAnnouncement = false
    @Environment(\.presentationMode) var presentationMode
    private var latestAnnouncement: String{
        Updates.announcements.first ?? "No new announcements"
    }
    
    var body: some View {
        
        NavigationStack{
            VStack(spacing: 20) {
                Text("p-gym")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.top, -40)

                
                // Top block
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        .frame(width: 350, height: 270) // Adjusted size
                        .overlay(
                            VStack(alignment: .center, spacing: 15) { // Main VStack
                                // Title
                                Text("Facility Hours")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)

                                // Hours Section
                                HStack(alignment: .top, spacing: 30) {
                                    // Days Column
                                    VStack(alignment: .leading, spacing: 8) {
                                        Text("Sun")
                                        Text("Mon")
                                        Text("Tues")
                                        Text("Wed")
                                        Text("Thurs")
                                        Text("Fri")
                                        Text("Sat")
                                    }.fontWeight(.semibold).foregroundStyle(.white)

                                    // Hours Column
                                    VStack(alignment: .leading, spacing: 8) {
                                        let weekdayTime = "6:00 AM - 11:00 PM"
                                        let weekendTime = "9:00 AM - 9:00 PM"

                                        Text(weekendTime)
                                        Text(weekdayTime)
                                        Text(weekdayTime)
                                        Text(weekdayTime)
                                        Text(weekdayTime)
                                        Text(weekdayTime)
                                        Text(weekendTime)
                                    }
                                    .foregroundStyle(.white)
                                }
                            }
                            .padding()
                        )
                }

                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.clear)
                        .frame(width: 350, height: 150)
                        .overlay(
                            ZStack {
                                Image("carw_exterior")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 150)
                                    .clipped()
                                    .cornerRadius(25)

                                // gradient overlay for text readability
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.black.opacity(0.5), Color.clear]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                                .cornerRadius(25)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Center for Athletics, Recreation, and")
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundColor(.white)

                                    Text("Wellness (CARW)")
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundColor(.white)

                                    HStack {
                                        Text("Located In:")
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundColor(.white)

                                        Text("Pomona College")
                                            .font(.system(size: 14, weight: .regular))
                                            .foregroundColor(.white.opacity(0.8))
                                    }

                                    HStack {
                                        Text("Address:")
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundColor(.white)

                                        Text("212 E 6th St, Claremont, CA 91711")
                                            .font(.system(size: 14, weight: .regular))
                                            .foregroundColor(.white.opacity(0.8))
                                    }
                                }
                                .padding()
                                .frame(width: 330, alignment: .leading) // keeps text within card
                            }
                        )
                }
                
                // Announcements Snippet
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue.opacity(0.1))
                        .frame(width: 350, height: 150)
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
                        .onTapGesture {
                            showAnnouncement = true
                    }
                }
                .padding(.horizontal, 20)
                .navigationDestination(isPresented: $showAnnouncement) {
                    Updates()
                }
                
            }
            
        }
    }
}

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
        CalendarPageView(activities: [
            Activity(
                name: "Morning Run",
                description: "A quick jog around the park to start the day.",
                type: 1,
                date: Date(),
                time: Date(),
                distance: 3.5,
                images: [UIImage(named: "hike")!]
            ),
            Activity(
                name: "Evening Yoga",
                description: "Relaxing yoga session to wind down.",
                type: 5,
                date: Date(),
                time: Date(),
                distance: 0.0,
                images: [UIImage(named: "hike1")!]
            ),
            Activity(
                name: "Morning Hike",
                description: "Hike at Yosemite with friends",
                type: 15,
                date: Date(),
                time: Date(),
                distance: 3.5,
                images: [UIImage(named: "walk")!]
            )
        ])
    }
}


struct Updates: View {
    static let announcements = [
        "New Gym Hours! Now open from 5 AM to 10 PM daily.",
        "Don't miss the Yoga Workshop this Saturday!",
        "Introducing new cycling classes starting next week.",
        "Book a room at the CARW today!",
        "CARW is closed Thanksgiving Day and Christmas Day"
    ]
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack {
                // Close button
                HStack {
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                
                Text("Updates")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(Updates.announcements, id: \.self) { announcement in
                            VStack {
                                Text(announcement)
                                    .font(.title3)
                                    .foregroundColor(.primary)
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 5)
                            .padding(.horizontal)
                        }
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}

struct RoomBooking: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            //Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack{
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
