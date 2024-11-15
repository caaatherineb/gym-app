////
////  CalendarPageView.swift
////  gym-app
////
////  Created by Catherine Byen on 11/15/24.
////
//
//import SwiftUI
//
//struct CalendarPageView: View {
//    let log: CalendarPage
//    
//    var body: some View {
//        VStack {
//            ZStack {
//                Image(log.activityName)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 550)
//                    .clipped()
//            }
//            .overlay(alignment: .topTrailing) {
//                Button {
//                   // ?
//                } label: {
//                    Image(systemName: "xmark.circle.fill")
//                        .foregroundColor(.secondary)
//                        .padding(6)
//                }
//
//            }
//            VStack {
//                HStack {
//                    Text(equipment.name)
//                        .fontWeight(.bold)
//                }
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .padding(.leading)
//                .font(.system(size: 24))
//                
//                Text("Min Weight: \(equipment.minWeight), Max Weight: \(equipment.maxWeight)")
//                    .foregroundColor(.secondary)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding([.leading])
//                    
//                
//                Text(equipment.usage)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding([.leading])
//                
//                Link(destination: equipment.usageURL) {
//                    Text("Learn More")
//                        .padding(.vertical, 6)
//                        .padding(.horizontal, 12)
//                        .overlay {
//                            Capsule()
//                                .stroke(lineWidth: 2)
//                        }
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding([.leading,.bottom])
//                }
//        }
//    }
//        .background(Color(.tertiarySystemFill))
//        .cornerRadius(12)
//    }
//}
//
//#Preview {
//    CalendarPageView()
//}
