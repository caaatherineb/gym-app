import SwiftUI



struct SelectionEquipment: View {
    @State private var showChestSheet = false
    @State private var showBackSheet = false
    @State private var showBicepsSheet = false
    @State private var showTricepsSheet = false
    @State private var showLegsSheet = false
    @State private var showShouldersSheet = false
    @State private var showAbsSheet = false

    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Select Body Part")
                    .font(.largeTitle)
                    .padding()
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .top)
                
                LazyVGrid(columns: columns, spacing: 16) {
                    Button("Chest") {
                        showChestSheet.toggle()
                    }
                    .buttonStyle(EquipmentButtonStyle())
                    .sheet(isPresented: $showChestSheet) {
                        Chest()
                    }
                    
                    Button("Back") {
                        showBackSheet.toggle()
                    }
                    .buttonStyle(EquipmentButtonStyle())
                    .sheet(isPresented: $showBackSheet) {
                        Back()
                    }
                    
                    Button("Biceps") {
                        showBicepsSheet.toggle()
                    }
                    .buttonStyle(EquipmentButtonStyle())
                    .sheet(isPresented: $showBicepsSheet) {
                        Biceps()
                    }
                    
                    Button("Triceps") {
                        showTricepsSheet.toggle()
                    }
                    .buttonStyle(EquipmentButtonStyle())
                    .sheet(isPresented: $showTricepsSheet) {
                        Triceps()
                    }
                    
                    Button("Legs") {
                        showLegsSheet.toggle()
                    }
                    .buttonStyle(EquipmentButtonStyle())
                    .sheet(isPresented: $showLegsSheet) {
                        Legs()
                    }
                    
                    Button("Shoulders") {
                        showShouldersSheet.toggle()
                    }
                    .buttonStyle(EquipmentButtonStyle())
                    .sheet(isPresented: $showShouldersSheet) {
                        Shoulders()
                    }
                    
                    Button("Abs") {
                        showAbsSheet.toggle()
                    }
                    .buttonStyle(EquipmentButtonStyle())
                    .sheet(isPresented: $showAbsSheet) {
                        Abs()
                    }
                }
                .padding()
            }
        }
    }
}

struct EquipmentButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .frame(minWidth: 90, minHeight: 100)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.orange)
                    .opacity(0.8)
            )
            .foregroundColor(.white)
            .tint(.white)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct Chest: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Chest Exercises")
                    .font(.largeTitle)
                    .padding()
                    .bold()
                
                
                Label {
                    Text("Bench Press")
                        .font(.headline)
                } icon: {
                    Image("bench-press")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                Label {
                    Text("Dumbell Chest Fly")
                        .font(.headline)
                } icon: {
                    Image("dumbell-chest-fly")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                
                Label {
                    Text("Chest Press")
                        .font(.headline)
                } icon: {
                    Image("chest-press")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                Label {
                    Text("Incline Bench")
                        .font(.headline)
                } icon: {
                    Image("incline-bench")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                Label {
                    Text("Chest Fly Machine")
                        .font(.headline)
                } icon: {
                    Image("chest-fly-machine")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                
                
            }
            
        }
        .padding()
    }
}

struct Back: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Back Exercises")
                    .font(.largeTitle)
                    .padding()
                    .bold()
                
                
                
                Label {
                    Text("Lat Pull-Down")
                        .font(.headline)
                } icon: {
                    Image("lat-pull-down")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                Label {
                    Text("Seated Cable Rows")
                        .font(.headline)
                } icon: {
                    Image("seated-cable-rows")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                
                Label {
                    Text("Pullups")
                        .font(.headline)
                } icon: {
                    Image("pullups")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                Label {
                    Text("Weighted Pullups")
                        .font(.headline)
                } icon: {
                    Image("weighted-pullups")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                Label {
                    Text("Shrugs")
                        .font(.headline)
                } icon: {
                    Image("shrugs")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                
                Label {
                    Text("Dumbell Rows")
                        .font(.headline)
                } icon: {
                    Image("onearmrow")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                Label {
                    Text("Deadlift")
                        .font(.headline)
                } icon: {
                    Image("deadlift")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
                
                Label {
                    Text("Bent Over Row")
                        .font(.headline)
                } icon: {
                    Image("bent-over-row")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
               

                
                
                .padding()

            }
            
        }
    }
}

struct Biceps: View {
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Biceps Exercises")
                        .font(.largeTitle)
                        .padding()
                        .bold()
                    
                    
                    Label {
                        Text("Dumbell Biceps Curls")
                            .font(.headline)
                    } icon: {
                        Image("dumbell-biceps-curls")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Dumbell Preacher Curls")
                            .font(.headline)
                    } icon: {
                        Image("dumbell-preacher-curls")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    
                    Label {
                        Text("Hammer Curls")
                            .font(.headline)
                    } icon: {
                        Image("hammer-curls")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Concentration Curls")
                            .font(.headline)
                    } icon: {
                        Image("concentration-curls")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Incline Dumbell Curl")
                            .font(.headline)
                    } icon: {
                        Image("incline-dumbell-curl")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
        }
    }
}

struct Triceps: View {
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Triceps Exercises")
                        .font(.largeTitle)
                        .padding()
                        .bold()
                    
                    
                    Label {
                        Text("Triceps Pushdown")
                            .font(.headline)
                    } icon: {
                        Image("N/A right now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Overhead Tricep Extention")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    
                    Label {
                        Text("Skull Crushers")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Close Grip Bench")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Dips")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
        }
    }
}

struct Legs: View {
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Leg Exercises")
                        .font(.largeTitle)
                        .padding()
                        .bold()
                    
                    
                    Label {
                        Text("Squats")
                            .font(.headline)
                    } icon: {
                        Image("N/A right now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Leg Press")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    
                    Label {
                        Text("Machine Quad Extentions")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Machine Hamstring Curls")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Deadlift")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Bulgarian Squats")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Lunges")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Calf Raises")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    
                }
        }
    }
}

struct Shoulders: View {
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Shoulder Exercises")
                        .font(.largeTitle)
                        .padding()
                        .bold()
                    
                    
                    Label {
                        Text("Lateral Raises")
                            .font(.headline)
                    } icon: {
                        Image("N/A right now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Seated Dumbell Press")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    
                    Label {
                        Text("Cable Lateral Raises")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Face Pulls")
                            .font(.headline)
                    } icon: {
                        Image("N/A right now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Front Raises")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Machine Shoulder Press")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    
                }
        }
    }
}

struct Abs: View {
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Ab Exercises")
                        .font(.largeTitle)
                        .padding()
                        .bold()
                    
                    
                    Label {
                        Text("Situps")
                            .font(.headline)
                    } icon: {
                        Image("N/A right now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Weighted Situps")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    
                    Label {
                        Text("Russian Twists")
                            .font(.headline)
                    } icon: {
                        Image("N/A right now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Decline Situps")
                            .font(.headline)
                    } icon: {
                        Image("N/A right now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Crunches")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Planks")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    Label {
                        Text("Cable Crunches")
                            .font(.headline)
                    } icon: {
                        Image("N/A Right Now")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
        }
    }
}

struct SelectionEquipment_Previews: PreviewProvider {
    static var previews: some View {
        SelectionEquipment()
    }
}
