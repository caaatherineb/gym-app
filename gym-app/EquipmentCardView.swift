//
//  EquipmentCardView.swift
//  gym-app
//
//  Created by megan tran on 10/27/24.
//

import SwiftUI

struct EquipmentCardView: View {
    let equipment: Equipment
    
    var body: some View {
        VStack {
            ZStack {
                Image("chest-press")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 460)
                    .clipped()
            }
            .overlay(alignment: .topTrailing) {
                Button {
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                        .padding(6)
                }

            }
            VStack {
                HStack {
                    Text(equipment.name)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .font(.system(size: 24))
                
                Text("Min Weight: \(equipment.minWeight), Max Weight: \(equipment.maxWeight)")
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading])
                    
                
                Text(equipment.usage)
                .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading])
                
                Link(destination: equipment.usageURL) {
                    Text("Learn More")
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .overlay {
                            Capsule()
                                .stroke(lineWidth: 2)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading,.bottom])
                }
        }
    }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

struct EquipmentCardView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentCardView(equipment: equipment1)
            .previewLayout(.sizeThatFits)
    }
}

