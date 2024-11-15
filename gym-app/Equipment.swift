//
//  Equipment.swift
//  gym-app
//
//  Created by megan tran on 10/27/24.
//

import Foundation

struct Equipment {
    let name: String
    let model: String
    let usage: String
    let minWeight: Int
    let maxWeight: Int
    let usageURL: URL
    let imageName: String
}



let equipment1 = Equipment(name: "Chest Press Machine", model: "Lifeline Fitness", usage: "Work out chest, biceps, back, deltoids and shoulders.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=xUm0BiZCWlQ")!, imageName: "header1")
let equipment2 = Equipment(name: "Seated Dip Machine", model: "Prector", usage: "Grows and builds strength within your triceps.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=gTSge1qIkcI")!, imageName: "header2")
let equipment3 = Equipment(name: "Bench Press", model: "Lifeline Fitness", usage: "Helps build muscle around chest, great for bodybuilding.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=rT7DgCr-3pg")!, imageName: "header3")
let equipment4 = Equipment(name: "Shoulder Press Machine", model: "Lifeline Fitness", usage: "Strengthens overhead movement with triceps, deltoids, and anterior deltoids.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=3R14MnZbcpw")!, imageName: "header4")
let equipment5 = Equipment(name: "Back Extension Machine", model: "Lifeline Fitness", usage: "Cardio workout for endurance.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=HW08ZKE42K4")!, imageName: "header5")
let equipment6 = Equipment(name: "Cable Row Machine", model: "Lifeline Fitness", usage: "Strength training with adjustable weight.", minWeight: 5, maxWeight: 50, usageURL: URL(string: "https://www.youtube.com/watch?v=8uj_mFORqCM")!, imageName: "header6")
let equipment7 = Equipment(name: "Abdominal Bench", model: "Lifeline Fitness", usage: "Core workout for abdominal muscles.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=g8Z_aGEpmk4")!, imageName: "header7")
let equipment8 = Equipment(name: "Leg Press Machine", model: "Lifeline Fitness", usage: "Builds lower body strength, focusing on quads, hamstrings, and glutes.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=CHPHn-OnTqE")!, imageName: "header8")
let equipment9 = Equipment(name: "Leg Curl Machine", model: "Lifeline Fitness", usage: "Isolates and strengthens hamstrings.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=ELOCsoDSmrg")!, imageName: "header9")
let equipment10 = Equipment(name: "Dumbbells", model: "Lifeline Fitness", usage: "Versatile equipment for strength training across various muscle groups.", minWeight: 0, maxWeight: 100, usageURL: URL(string: "https://www.youtube.com/watch?v=y1r9toPQNkM")!, imageName: "header10")
let equipment11 = Equipment(name: "Treadmill", model: "Lifeline Fitness", usage: "Cardio workout for building endurance and stamina.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=8i3Vrd95o2k")!, imageName: "header11")
let equipment12 = Equipment(name: "Spin Bike", model: "Lifeline Fitness", usage: "High-intensity cardio workout for lower body conditioning.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=udhRFATkN44")!, imageName: "header12")
let equipment13 = Equipment(name: "Stair Climber", model: "Lifeline Fitness", usage: "Builds endurance and lower body strength by simulating stair climbing.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=xSB39wbMz4w")!, imageName: "header13")
let equipment14 = Equipment(name: "Arm Curl Machine", model: "Lifeline Fitness", usage: "Isolates and strengthens the biceps.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=M_uPvGrMx_o")!, imageName: "header14")
let equipment15 = Equipment(name: "Chest Fly Machine", model: "Lifeline Fitness", usage: "Strengthens your chest and torso to allow you to increase muscle mass.", minWeight: 0, maxWeight: 200, usageURL: URL(string: "https://www.youtube.com/watch?v=u56jywgbvE4")!, imageName: "header15")

