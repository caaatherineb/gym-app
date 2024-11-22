//
//  CalendarPage.swift
//  gym-app
//
//  Created by Kaili Shoop on 10/28/24.
//

import SwiftUI
import PhotosUI

struct CalendarPage: View {
    
    @State var selectedActivity = 1
    @State var activityName: String = ""
    @State var activityDescription: String = ""
    @State var selectedItems: [PhotosPickerItem] = []
    @State var selectedImages: [UIImage] = []
    @State var activityDate = Date()
    @State var activityTime = Date()
    @State var distance: Double = 0.0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    
                    ZStack(alignment: .topLeading) {
                        if activityName.isEmpty {
                            Text("Activity Name")
                                .foregroundColor(.gray)
                                .padding(.leading, 18)
                                .padding(.top, 19)
                                .zIndex(1)
                        }
                        
                        TextEditor(text: $activityName)
                            .padding(.leading, 4)
                            .font(.system(size: 18))
                            .autocorrectionDisabled()
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .frame(width: 340, height: 50)
                            .padding(.horizontal, 10)
                            .padding(.top, 10)
                    }
                    
                    ZStack(alignment: .topLeading) {
                        if activityDescription.isEmpty {
                            Text("How'd it go? Tell us more about your experience")
                                .foregroundColor(.gray)
                                .padding(.leading, 8)
                                .padding(.top, 12)
                                .zIndex(1)
                        }
                        
                        TextEditor(text: $activityDescription)
                            .padding(.leading, 4)
                            .font(.system(size: 18))
                            .autocorrectionDisabled()
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .frame(height: 100)
                    }
                    .padding(.bottom, 20)
                    .padding(10)
                    
                    Text("Type of Activity")
                        .font(.headline)
                        .padding(.bottom, 5)
                        .bold()
                    
                    Picker("Type of Activity", selection: $selectedActivity) {
                        Label(" Run", systemImage: "figure.walk").tag(1)
                        Label(" Lift", systemImage: "dumbbell").tag(2)
                        Label(" Cycling", systemImage: "bicycle").tag(3)
                        Label(" Swim", systemImage: "figure.wave").tag(4)
                        Label(" Yoga", systemImage: "leaf").tag(5)
                        Label(" Basketball", systemImage: "sportscourt").tag(6)
                        Label(" Soccer", systemImage: "soccerball").tag(7)
                        Label(" Football", systemImage: "football").tag(8)
                        Label(" Tennis", systemImage: "tennis.racket").tag(9)
                        Label(" Baseball", systemImage: "baseball").tag(10)
                        Label(" Golf", systemImage: "flag").tag(11)
                        Label(" Boxing", systemImage: "figure.boxing").tag(12)
                        Label(" Surfing", systemImage: "figure.surfing").tag(13)
                        Label(" Skiing", systemImage: "figure.skiing.downhill").tag(14)
                        Label(" Hiking", systemImage: "figure.hiking").tag(15)
                    }
                    .pickerStyle(MenuPickerStyle())
                    .padding(.bottom, 20)
                    
                    
                    PhotosPicker(
                        selection: $selectedItems,
                        matching: .images,
                        photoLibrary: .shared()
                    ) {
                        Label("Add Photos/Videos", systemImage: "photo.on.rectangle.angled")
                            .font(.headline)
                            .padding()
                            .frame(width: 350, height: 100)
                            .background(Color.white)
                            .border(Color.blue)
                            .foregroundColor(.blue)
                            .cornerRadius(8)
                    }
                    .onChange(of: selectedItems) { oldItems, newItems in
                        selectedImages.removeAll()
                        for item in newItems {
                            item.loadTransferable(type: Data.self) { result in
                                if let data = try? result.get(), let image = UIImage(data: data) {
                                    selectedImages.append(image)
                                }
                            }
                        }
                    }
                    
                    Spacer()
                    
                    Text("Stats")
                        .font(.headline)
                        .bold()
                        .padding(.bottom, 5)
                        .padding(.top, 20)
                    
                    
                    DatePicker(
                        "Date of Activity",
                        selection: $activityDate,
                        displayedComponents: .date
                    )
                    .padding(.vertical, 10)
                    
                    
                    DatePicker(
                        "Time of Activity",
                        selection: $activityTime,
                        displayedComponents: .hourAndMinute
                    )
                    .padding(.vertical, 10)
                    
                    
                    HStack {
                        Text("Distance (miles)")
                            .font(.headline)
                        Spacer()
                        Stepper(value: $distance, in: 0...100, step: 0.1) {
                            Text("\(distance, specifier: "%.1f") miles")
                                .font(.body)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.vertical, 10)
                    
                }
                .padding()
                .navigationBarTitle("Edit Activity", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            
                        }
                        .foregroundStyle(.white)
                        .font(.headline)
                    }
                }
                .toolbarBackground(Color.blue, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .onAppear {
                    let appearance = UINavigationBarAppearance()
                    appearance.backgroundColor = UIColor.clear
                    appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                    appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                    
                    UINavigationBar.appearance().standardAppearance = appearance
                    UINavigationBar.appearance().scrollEdgeAppearance = appearance
                    UINavigationBar.appearance().compactAppearance = appearance
                    UINavigationBar.appearance().tintColor = .white
                }
            }
        }
    }
    
}
#Preview {
    CalendarPage()
}
