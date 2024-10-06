import SwiftUI

struct page4: View {
    var body: some View {
        VStack {
            // Header
            Spacer(minLength: 70)
            Text("قد تكون مهتم بـ")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .frame(maxWidth: 200, alignment: .trailing)
                .padding(.leading, 123.0)
            Spacer(minLength: 10)
            Text("التصنيفات")
                .padding(.leading, 246.0)
            Text(" ")

                .fontWeight(.regular)
                .padding(.leading, 256.0)
                .frame(width: -10.0, height: -10.0)
            
            ScrollViewReader { scrollViewProxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        // Category buttons with actions
                        CategoryButton(title: "قصائد صبر", action: {
                            print("قصائد صبر button clicked")
                        })
                        .id(4)  // "قصائد صبر" button
                        
                        CategoryButton(title: "قصائد الزهد", action: {
                            print("قصائد الزهد button clicked")
                        })
                        .id(0)
                        
                        CategoryButton(title: "قصائد عامة", action: {
                            print("قصائد عامة button clicked")
                        })
                        .id(1)
                        
                        CategoryButton(title: "قصائد المفاتن", action: {
                            print("قصائد المفاتن button clicked")
                        })
                        .id(2)
                        
                        CategoryButton(title: "قصائد الهجاء", action: {
                            print("قصائد الهجاء button clicked")
                        })
                        .id(3)
                    }
                    .padding(.horizontal)
                }
                .onAppear {
                    // Scroll to "قصائد صبر" when the view appears
                    scrollViewProxy.scrollTo(3, anchor: .leading) // Change this to match the ID of "قصائد صبر"
                }
            }
            .padding(.bottom, 10)
            
            // Poems
            Text("   ")
                .frame(width: -6.0, height: -7.0)
            ScrollView {
                VStack(spacing: 15) {
//                    PoemView(title: "أنشودة المطر", excerpt: "عيناك غابتا نخيل عيناكِ غابتا نخيلٍ ساعةَ السحَر، أو شُرفتان راحَ ينأى عنهما القمر……", imageName: "im5"){                      print("يعيش المرء clicked")}
                    PoemView(
                                   title: "أنشودة المطر",
                                   excerpt: "عيناك غابتا نخيل عيناكِ غابتا نخيلٍ ساعةَ السحَر، أو شُرفتان راحَ ينأى عنهما القمر……",
                                   imageName: "im5",
                                   action: {
                                       print("أنشودة المطر clicked")
                                   },
                                   moreAction: {
                                       print("اقرأ المزيد for أنشودة المطر clicked")
                                   }
                               )
                               
                               PoemView(
                                   title: "يعيش المرء",
                                   excerpt: "يَعيشُ المَرءُ ما اِستَحيا بِخَيرٍ وَيَبقى العودُ ما بَقِيَ اللِحاءُ إِذا لَم تَخشَ عاقِبَةَ اللَيالي وَلَم تَستَحيِ فَاِفعَل ما تَشاءُ",
                                   imageName: "im4",
                                   action: {
                                       print("يعيش المرء clicked")
                                   },
                                   moreAction: {
                                       print("اقرأ المزيد for يعيش المرء clicked")
                                   }
                               )
                               
                               PoemView(
                                   title: "رأيت القناعة",
                                   excerpt: "رَأيْتُ القنَاعَة َ رَأْسَ الغنَى فصِرتُ بأَذْيَالِهَا مُمْتَسِكْ فلا ذا يراني على بابهِ وَلا ذا يَرَاني بهِ مُنْهمِكْ",
                                   imageName: "im3",
                                   action: {
                                       print("رأيت القناعة clicked")
                                   },
                                   moreAction: {
                                       print("اقرأ المزيد for رأيت القناعة clicked")
                                   }
                               )
                               
                               PoemView(
                                   title: "دع الأيام",
                                   
                                   excerpt:
                                    "دَعِ الأَيّامَ تَفعَلُ ما تَشاءُ وَطِب نَفساً إِذا حَكَمَ القَضاءُ وَلا تَجزَع لِحادِثَةِ اللَيالي فَما لِحَوادِثِ الدُنيا بَقاءُ",
                                   imageName: "im1",
                                   action: {
                                       print("دع الأيام clicked")
                                   },
                                   moreAction: {
                                       print("اقرأ المزيد for دع الأيام clicked")
                                   }
                               )
                    .padding(.leading, 0) // Adjust leading padding
                    .frame(width: 350, height: 100) // Fixed frame for the entire PoemView

                }
                .padding(.horizontal)
            }
//            .background(Color(hex: "#E6EAF0"))
            .edgesIgnoringSafeArea(.all)

            //tab bar

                                      VStack {
                                          HStack {
                                              Spacer()
                                              Button(action: {
                                               
                                              }) {
                                                  Image(systemName: "house.fill")
                                                      .aspectRatio(contentMode: .fill)
                                                      .foregroundColor(Color(hue: 1.0, saturation: 0.015, brightness: 1.0, opacity: 0.789))
                                                      .padding(.top, -13.0)
                                                      .frame(width: 60.0, height: 60.0)
                                              }
                                              Spacer()

                                   
                                              Button(action: {
               
                                              }) {
                                                  Image(systemName: "heart")
                                                      .foregroundColor(Color(hue: 1.0, saturation: 0.015, brightness: 1.0, opacity: 0.789))                                          .padding(.top, -13.0)
                                                      .padding()
                                                      .frame(width: 60.0, height: 60.0)
                                              }
                                              Spacer()

                       
                                              Button(action: {
                                           
                                              }) {
                                                  Image(systemName: "note.text")
                                                      .foregroundColor(Color(hue: 1.0, saturation: 0.015, brightness: 1.0, opacity: 0.789))
                                                      .padding(.top, -13.0)
                                                      .frame(width: 50.0, height: 50.0)
                                              }
                                              Spacer()
                                          }
                                          .padding(.top, 13.0)
                                          .background(
                                              RoundedRectangle(cornerRadius: 55)
                                                  .fill(Color(red: 42/255, green: 59/255, blue: 89/255))
                                                  
                                          )
                                          
                                          .frame(width: 320, height: 80)
                                      }
            .padding(.horizontal)
            .padding(.bottom, 10)
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color(hex: "#FFFFFF"), Color(hex: "#E6EAF0")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
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
    var action: () -> Void  // Action for the button
    
    var body: some View {
        Button(action: {
            action()  // Perform the action when the button is tapped
        }) {
            Text(title)
                .font(.system(size: 16))
                .padding(.vertical, 8)
                .padding(.horizontal, 15)
                .background(Color(hex: "#E2DAD6"))
                .cornerRadius(20)
                .foregroundColor(.black)  // Text color for the button
        }
    }
}
struct PoemView: View {
    var title: String
    var excerpt: String
    var imageName: String
    var action: () -> Void // Action for tapping the entire view
    var moreAction: () -> Void // Action for "اقرأ المزيد" button

    var body: some View {
        HStack {
            // "اقرأ المزيد" Button on the left
            Button(action: {
                moreAction() // Action for "اقرأ المزيد" button
            }) {
                Text("اقرأ المزيد")
                    .font(.system(size: 13))
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.875, saturation: 0.033, brightness: 0.966, opacity: 0.787))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.white.opacity(0.23))
                    .cornerRadius(8)
            }
            .padding(.leading, 8)

            Spacer() // Adds space between the button and the text

            VStack(alignment: .trailing, spacing: 0) {
                Text(title)
                    .font(.system(size: 13)) // Title font
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.05, brightness: 0.95, opacity: 0.935))
                    .lineLimit(1)
                    .multilineTextAlignment(.trailing)
                    .truncationMode(.tail)

                Text(excerpt)
                    .font(.system(size: 12))
                    .foregroundColor(.gray) // Excerpt text color
                    .lineLimit(2)
                    .padding(.top, 2.0)
            }
            .padding(.top, -5.0)

            Spacer() // Push the image to the right

            Image(imageName)
                .resizable()
                .frame(width: 75, height: 60) // Adjust size as needed
                .cornerRadius(20) // Rounded corners
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding()
        .background(Color(hex: "#4E6384")) // Background color for the PoemView
        .cornerRadius(25) // Rounded corners
        .shadow(radius: 1) // Shadow effect
        .onTapGesture {
            action() // Perform the action when the whole view is tapped
        }
    }
}

struct FooterButton: View {
    var iconName: String
    
    var body: some View {
        Button(action: {
            // Action goes here
        }) {
            Image(systemName: iconName)
                .font(.system(size: 28))
                .foregroundColor(Color(hex: "#3C4D6A"))
                .padding()
        }
    }
}

// Helper to convert hex string to Color
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 1  // skip the '#'
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        page4()
    }
}
