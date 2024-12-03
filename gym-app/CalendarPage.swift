//
//  CalendarPage.swift
//  gym-app
//
//  Created by Kaili Shoop on 10/28/24.
//

import SwiftUI
import PhotosUI

struct ShowEquipment: View {
    @State private var showingSelectionEquipment = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Button("Exercises Done/Equipment Used") {
                showingSelectionEquipment.toggle()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .sheet(isPresented: $showingSelectionEquipment) {
            SelectionEquipment()
            
            
        }
    }
    
}



struct CalendarPage: View {
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
                VStack(alignment: .leading, spacing: 20) {
                    ZStack(alignment: .topLeading) {
                        if activityName.isEmpty {
                            Text("Activity Name")
                                .foregroundColor(.gray)
                                .padding(.leading, 18)
                                .padding(.top, 10)
                                .zIndex(1)
                        }
                        
                        TextEditor(text: $activityName)
                            .padding(.leading, 3)
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
                    }

                    ZStack(alignment: .topLeading) {
                        if activityDescription.isEmpty {
                            Text("How'd it go? Tell us more about your experience")
                                .foregroundColor(.gray)
                                .padding(.leading, 20)
                                .padding(.top, 16)
                                .zIndex(1)
                        }
                        
                        TextEditor(text: $activityDescription)
                            .padding(.leading, 3)
                            .font(.system(size: 18))
                            .autocorrectionDisabled()
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .frame(height: 100)
                            .padding(10)
                    }
                    
                    ShowEquipment()
                    
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
                    
                    Text("Stats")
                        .font(.headline)
                        .bold()
                        .padding(.bottom, 5)
                    
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
