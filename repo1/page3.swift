//
//  SwiftUIView.swift
//  ourRepo
//
//  Created by Alanoud Alamrani on 28/03/1446 AH.
//

import SwiftUI

struct page3: View {
    var body: some View {
        @State  var searchText = ""
        @FocusState var isFocused: Bool // To manage focus state
        ZStack{
            Circle()
                .fill(Color(red:127/255, green: 161/255, blue: 195/255))
                .frame(width: 600, height: 150)
                .blur(radius: 60)
                .position(x: 60, y: 75)
            
            Circle()
                .fill(Color(red:199/255, green: 186/255, blue: 186/255))
                .frame(width: 700, height: 250)
                .blur(radius: 60)
                .position(x: 400, y: 300)
            
            VStack{
                HStack {
                    VStack(spacing:15){
                        Text("مرحباً ريم بيت اليوم يقول")
                           .font(.system(size: 14))
                        // .multilineTextAlignment(.trailing)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                        
                        Text("هذا الذي تعرف البطحاء وطأته والبيت يعرفه والحل والحرم")
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.gray)
                            .fontWeight(.thin)
                            .font(.system(size: 12))
                    }
                    
                    
                    
                    
                    
                    ZStack{
                        Circle()
                            .fill(Color(red:233/255, green: 237/255, blue: 255/255))
                            .frame(width: 100, height: 100)
                        
                        Image(.user)
                            .resizable()
                            .frame(width: 70, height: 70)
                        
                    }
                    
                    
                    
                }
                .padding(30)
                
                
                //search
                VStack {
                    HStack {
                        TextField("Search...", text: $searchText)
                            .cornerRadius(10)
                            .frame(width: 260)
        
                          //  .focused($isFocused) // Bind focus state
                            .padding(11)
                        Button(action: {
                            isFocused.toggle()
                            
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(11)
                        }
                    }
                  //  .padding()
                }
                .background(Color(red: 73/255, green: 99/255, blue: 132/255))
                .cornerRadius(20)
                .padding()
    
             .frame(width: 300, height: 40)
                    .padding(.bottom,20)
                VStack{
                    Text("التصنيفات")
                        .padding(.leading, 260)
                  .padding(.bottom,15)
                        .font(.system(size: 15))
                    
                    HStack{
                        ZStack{
                            Capsule()
                                .fill(Color(red:226/255, green: 218/255, blue: 214/255))
                                .frame(width: 60, height: 20)
                            Text("قصائد الصبر")
                                .font(.system(size: 8))
                        }
                        ZStack{
                            Capsule()
                                .fill(Color(red:226/255, green: 218/255, blue: 214/255))
                                .frame(width: 60, height: 20)
                            Text("قصائد المعلقات")
                                .font(.system(size: 8))
                        }
                        ZStack{
                            Capsule()
                                .fill(Color(red:226/255, green: 218/255, blue: 214/255))
                                .frame(width: 60, height: 20)
                            Text("قصائد الهجاء")
                                .font(.system(size: 8))
                        }
                        
                        ZStack{
                            Capsule()
                                .fill(Color(red:226/255, green: 218/255, blue: 214/255))
                                .frame(width: 60, height: 20)
                            Text("قصائد عامة")
                                .font(.system(size: 8))
                        }
                        
                        ZStack{
                            Capsule()
                                .fill(Color(red:226/255, green: 218/255, blue: 214/255))
                                .frame(width: 60, height: 20)
                            Text("قصائد الرثاء")
                                .font(.system(size: 8))
                        }
                    }
                    // .padding(.bottom,50)
                    HStack{
                        
                        Text("أظهار الكل")
                            .fontWeight(.thin)
                            .foregroundColor(.gray)
                            .padding(.trailing, 150)
                            .font(.system(size: 10))
                        Text("قد تكون مهتم ب")
                            .bold()
                            .font(.system(size: 15))
                        
                        
                        
                    }
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 30) // Set the corner radius here
                            .fill(Color(red: 226 / 255, green: 218 / 255, blue: 214 / 255))
                            .frame(width: 300, height: 150) // Set the size of the rectangle
                            .padding(8)
                        
                        VStack{
                            Text("أروح وقد ختمت على فؤادي")
                                .padding(.bottom,10)
                            Text("بحبك ان يحل به سواك")
                                .padding(.leading,-70)
                        }
                        
                    }
                    
                    Text("الشعراء")
                        .padding(.leading, 260)
                        .font(.system(size: 15))
                }
           
                
                
                
                
                //poet

                let images = ["bader", "ابو فراس الحمداني", "المتنبي", "احمد شوقي"]
                
                HStack {
                    ForEach(images, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 90, height: 95)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .padding(0.1)
                            .padding(.bottom,50)
                    }
                    
                }
                
                
                
                
                
                
                
                //tab bar
         
                           VStack {
                               Spacer()
                               HStack {
                                   Spacer()
                                   Button(action: {
                                    
                                   }) {
                                       Image(systemName: "house.fill")
                                           .foregroundColor(.white)
                                           .padding()
                                   }
                                   Spacer()

                        
                                   Button(action: {
    
                                   }) {
                                       Image(systemName: "heart")
                                           .foregroundColor(.white)
                                           .padding()
                                   }
                                   Spacer()

            
                                   Button(action: {
                                
                                   }) {
                                       Image(systemName: "note.text")
                                           .foregroundColor(.white)
                                           .padding()
                                   }
                                   Spacer()
                               }
                               .padding()
                               .background(
                                   RoundedRectangle(cornerRadius: 55)
                                       .fill(Color(red: 42/255, green: 59/255, blue: 89/255))
                               )
                               .frame(width: 370, height: 50)
                           }
                  }
                
            }
            
        }
    }

#Preview {
    page3()
}


