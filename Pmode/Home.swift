//
//  Home.swift
//  Pmode
//
//  Created by ama alothman on 15/06/1444 AH.
//

import SwiftUI


import SwiftUI
extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

struct Home: View {
    
    @State private var cont = 0
    
    let myArray = [
        [Text("We cannot solve problems with the kind of thinking we employed when we came up with them."), Text("Albert Einstein")],
        [Text("Learn as if you will live forever, live like you will die tomorrow."), Text("Mahatma Gandhi")],
        [Text("When you change your thoughts, remember to also change your world."),Text("Norman Vincent")],
        [Text("It is better to fail in originality than to succeed in imitation."),Text( "AHerman Melville")],
        [Text("To know how much there is to know is the beginning of learning to live."), Text("Dorothy West")]]
    
    let myItem = Int.random(in: 0..<5)
    
   
    var body: some View {
        
        
        
        let qu : Text = myArray[myItem][0]
        let name : Text = myArray[myItem][1]
        
        
        let colors = [
            Color(hex: 0xEDF7FD),
            Color(hex: 0xF9F7ED)
            // Color.yellow
        ]
        
      
        
        NavigationView {
            
           
                    
        
        ZStack{
            Rectangle()
                .fill(LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)) .ignoresSafeArea()
            
            VStack{
                
                VStack{
//                    Text("")
//                        .navigationBarTitleDisplayMode(.inline)
//                        .toolbar {
//                            ToolbarItem(placement: .principal) {
//                                HStack {
//                                    Text("Pmood").font(.title2).fontWeight(.bold)
//                                }
//                            }
//                        }
                    
                    
                    
                    
                    VStack{
//                    HStack{
//                        Image(systemName:"calendar")
//                            .font(.system(size: 14))
//                        Text("\(Date().displayFormat1)")
//                            .font(.subheadline).underline().fontWeight(.medium)
//                    }
//                   .padding(.bottom,10)
//                   .padding(.top,-30)
//                    .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Hello")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center).accessibilityAddTraits(.isHeader).padding(.trailing,280)
                }
                   
                    
                    
                    
                }
                
                RoundedRectangle(cornerRadius: 26, style: .continuous)
                    .foregroundColor(Color(hex: 0xF1F1F1))
                    .frame(width: 360, height: 140).overlay(
                        
                        VStack{
                            
                            qu.padding(15)
                            name.fontWeight(.bold)
                                .multilineTextAlignment(.trailing).padding(.leading,130)//.padding(.top,10)
                        }
                    )
                
                VStack{
                    Text("How are you?")
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading).padding(.trailing,230)
                    Text("Choose your mood today by clicking on it:")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading).padding(.trailing,65).padding(.top,2)
                }.padding(.top,15)
                
                
                
                RoundedRectangle(cornerRadius: 26, style: .continuous)
                    .foregroundColor(Color(hex: 0xF1F1F1))
                    .frame(width: 360, height: 160).overlay(
                HStack{
                    
                    
                    Button(action: {
                        self.cont = 1
                    }, label: {
                        
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 100, height: 140).padding(.bottom)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0x5551FF)).padding(.top,-30)
                                    
                                    Image("Happy").resizable()
                                        .frame(width: 60, height: 60).padding(.top,-30)
                                }
                                
                                Text("Okay")
                            }
                        }
                        
                        
                    })
                    
                    
                    Button(action: {
                        self.cont = 2
                    }, label: {
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 100, height: 140).padding(.bottom)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0x47E0D9)).padding(.top,-30)
                                    
                                    Image("Meh").resizable()
                                        .frame(width: 60, height: 60).padding(.top,-30)
                                }
                                
                                Text("Unsure")
                            }
                        }
                        
                    })
                    
                    Button(action: {
                        self.cont = 3
                    }, label: {
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 100, height: 140).padding(.bottom)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                                    // .fill(0xEDF7FD)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0xFF9F39)).padding(.top,-30)
                                    
                                    Image("Sad").resizable()
                                        .frame(width: 60, height: 60).padding(.top,-30)
                                }
                                
                                Text("Bad")
                            }
                        }
                    })
                    
                    
                    
                }.padding(.trailing,3).padding(.top,15)
                )
                
                ScrollView {
                
                Text("Roccmandition for you mood")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading).padding(.trailing,100).padding(.top,20)
                
                if (cont == 0){
                   
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .frame(width: 360, height: 190).foregroundColor(Color(hex: 0xF1F1F1)).overlay (
                            
                            Text("If you choose the mood from above, the suggestions will appear here")
                                .font(.subheadline)
                                .multilineTextAlignment(.center).padding()
                        
                        )
                    
                }
                
                if (cont == 1)  {
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 155, height: 190)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                                    // .fill(0xEDF7FD)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0xF5F5F5))
                                    
                                    Image("Earphone").resizable()
                                        .frame(width: 77, height: 90)
                                }.padding(.bottom,30)
                                
                                Text("Listen to music")
                                    .fontWeight(.medium)
                            }
                        }
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 155, height: 190)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                                    // .fill(0xEDF7FD)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0xF5F5F5))
                                    
                                    Image("paper and pen").resizable()
                                        .frame(width:90, height: 85)
                                }.padding(.bottom,30)
                                
                                Text("Document your moment")
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center).padding().padding(.top,-30)
                                // .font(.subheadline)
                            }
                        }.padding(.leading,15)
                    }.padding(.top,20)
                }
                
                if (cont == 2)  {
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 155, height: 190)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                                    // .fill(0xEDF7FD)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0xF5F5F5))
                                    
                                    Image("Tv").resizable()
                                        .frame(width: 103, height: 100)
                                }.padding(.bottom,30)
                                
                                Text("Watch a movie")
                                    .fontWeight(.medium)
                            }
                        }
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 155, height: 190)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                                    // .fill(0xEDF7FD)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0xF5F5F5))
                                    
                                    Image("Bath").resizable()
                                        .frame(width: 100, height: 100)
                                }.padding(.bottom,30)
                                
                                Text("Have a bath")
                                    .fontWeight(.medium)
                            }
                        }.padding(.leading,15)
                    }.padding(.top,20)
                }
                
                if (cont == 3)  {
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 155, height: 190)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                                    // .fill(0xEDF7FD)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0xF5F5F5))
                                    
                                    Image("Friend").resizable()
                                        .frame(width: 95, height: 90)
                                }.padding(.bottom,30)
                                
                                Text("Talk with friends")
                                    .fontWeight(.medium)
                            }
                        }
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(.white)
                                .frame(width: 155, height: 190)
                            
                            VStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                                    // .fill(0xEDF7FD)
                                        .frame(width: 90, height: 90).foregroundColor(Color(hex: 0xF5F5F5))
                                    
                                    Image("shoes").resizable()
                                        .frame(width: 100, height: 100)
                                }.padding(.bottom,30)
                                
                                Text("Run 30 Min")
                                    .fontWeight(.medium)
                            }
                        }.padding(.leading,15)
                    }.padding(.top,20)
                } }
                
                Spacer()
            }.padding()
            //  Spacer()
            
            
            
            
        }
    }
        
        }}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


extension Date {
    var displayFormat1: String{
        self.formatted(
            .dateTime
               // .year(.twoDigits)
                .month()
                .day()
                .hour()
                .minute()
            
        )
    }
}

