//
//  CalendarPageView.swift
//  gym-app
//
//  Created by Catherine Byen on 11/15/24.
//

import SwiftUI
import PhotosUI

struct Activity: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var type: Int
    var date: Date
    var time: Date
    var distance: Double
    var images: [UIImage]
}

struct CalendarPageView: View {
    let activities: [Activity]
    
    let activityLabel: [Int: String] = [
        1: "Run",
        2: "Lift",
        3: "Cycling",
        4: "Swim",
        5: "Yoga",
        6: "Basketball",
        7: "Soccer",
        8: "Football",
        9: "Tennis",
        10: "Baseball",
        11: "Golf",
        12: "Boxing",
        13: "Surfing",
        14: "Skiing",
        15: "Hiking",
        16: "Other",
    ]
    
    var body: some View {
        NavigationView {
            VStack{
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(activities) {
                            activity in
                            ActivityCardView(activity: activity, activityLabel: activityLabel)
                        }
                    }
                    .padding()
                }
                
                NavigationLink(destination: CalendarPage()){
                    Text("ADD ACTIVITY")
                        .font(.headline)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 50)
                        .foregroundStyle(.white)
                        .background(Color.blue)
                        .padding(.horizontal)
                        .padding(.bottom, 16)
                }
            }
            .navigationBarTitle("Activities", displayMode: .large)
        }
    }
}

struct ActivityCardView: View {
    let activity: Activity
    let activityLabel: [Int: String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            //Display first image or placeholder
            if let firstImage = activity.images.first {
                Image(uiImage: firstImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .cornerRadius(8)
            } else {
                Color.gray
                    .frame(height: 150)
                    .cornerRadius(8)
                    .overlay(
                        Text("No Image")
                            .foregroundColor(.white)
                            .font(.headline)
                    )
            }
        
            
            Text(activity.name)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(activity.description)
                .foregroundColor(.secondary)
                .lineLimit(2)
            
            if let typeLabel = activityLabel[activity.type] {
                Text("Type: \(typeLabel)")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            
            HStack {
                Text("Date: \(activity.date, formatter: DateFormatter.shortDate)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text("Distance: \(activity.distance, specifier: "%.1f") miles")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

extension DateFormatter {
    static let shortDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    static let shortTime: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter
    }()
}

#Preview {
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
        )
    ])
}
