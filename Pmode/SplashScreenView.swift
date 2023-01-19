

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false

    
    
    var body: some View {
        if isActive {
            Home ()
        
        } else {
            
            
            ZStack{   RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .fill(Color("pl"))
                    .frame(width: 800, height: 800).padding(.bottom)
                    .padding(.top,-370)
                    .padding(.trailing,-150)
                
                    
                    VStack{
                        GifImage("HH")
                        
                            .cornerRadius(10)
                            .frame(width:300, height:259)
                            .padding(.top, -474)
                            .padding(.trailing, -130)
                        
                    }
                    
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(Color("ul"))
                        .frame(width: 300, height: 600)
                        .padding(.bottom)
                        .padding(.top,280)
                        .padding(.trailing,150)
                    VStack{
                        
                        
                        
                        GifImage("UII")
                            .cornerRadius(10)
                            .frame(width:289, height: 289)
                            .padding(.top,-40)
                            .padding(.trailing,180)
                        
                        
                    }
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(Color("sa"))
                        .frame(width: 300, height: 580).padding(.bottom)
                        .padding(.top,700)
                        .padding(.trailing,-180)
                    VStack{

                        GifImage("SASA")

                            .cornerRadius(10)
                            .frame(width:250, height: 200)
                            .padding(.top,400)
                            .padding(.trailing,-140)

                    }
                    
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.5)) {
                          
                            
                        }
                    }
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
                
            }
        }
    }
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
