import SwiftUI

struct page2: View {
    @State private var userName: String = "" // State to hold the user's name input
    @State private var selectedCategories: Set<String> = [] // To track selected categories
    
    let categories = [
        ["النزل", "الحكمة"],
        ["الرثاء", "الشعر الوجداني"],
        ["الهجاء", "الشعر الحداثي"],
        ["المديح"]
    ]
    
    var body: some View {
        ZStack {
            // Background with blurry circles
            BackgroundView()
            
            // Main content
            VStack(spacing: 40) {
                
                // Welcome message with dynamic name input
                if !userName.isEmpty {
                    Text("مرحبًا \(userName) ...")لا
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                } else {
                    Text("مرحبًا")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                
                // Name input field
                TextField("اكتب اسمك هنا", text: $userName)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                // Question prompt
                Text("ما هو تصنيف الشعر الذي تفضله ؟")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Poetry Categories
                VStack(spacing: 20) {
                    ForEach(categories, id: \.self) { row in
                        HStack(spacing: 15) {
                            ForEach(row, id: \.self) { category in
                                CategoryButton(
                                    title: category,
                                    isSelected: selectedCategories.contains(category)
                                ) {
                                    toggleCategory(category)
                                }
                            }
                        }
                    }
                }
                
                // Start button
                Button(action: {
                    // Action for starting the quiz or form
                    print("Start button tapped")
                }) {
                    Text("إبدأ")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: "#2A3B55")) // Custom color here
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all) // Extend background to edges
    }
    
    // Toggle the selection of a category
    private func toggleCategory(_ category: String) {
        if selectedCategories.contains(category) {
            selectedCategories.remove(category)
        } else {
            selectedCategories.insert(category)
        }
    }
}

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color(hex: "#C7BABA").opacity(0.5))
                .frame(width: 300, height: 300)
                .offset(x: -150, y: -200)
                .blur(radius: 30)
                .position(x: 60, y: 75)

            Circle()
                .fill(Color(hex: "#E2DAD6").opacity(0.3))
                .frame(width: 200, height: 200)
                .offset(x: 150, y: 100)
                .blur(radius: 30)

            Circle()
                .fill(Color(hex: "#0F2C59").opacity(0.4))
                .frame(width: 280, height: 250)
                .offset(x: 100, y: -150)
                .blur(radius: 60)
            
        }
    }
}

struct CategoryButton: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .font(.body)
                .padding(10)
                .frame(minWidth: 120)
                .foregroundColor(.white)
                .background(isSelected ? Color(hex: "#4F6485").opacity(0.8) : Color(hex: "#4F6485"))
                .cornerRadius(40)
        }
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        page2()
    }
}
