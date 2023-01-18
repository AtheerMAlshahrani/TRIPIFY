//
//  Verification.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI
import iPhoneNumberField

struct Verification: View {
    @State var countDownTimer = 50
    @State var timerRunning = true
    let timer = Timer.publish(every:1 , on: .main , in: .common).autoconnect()
    @State var text = ""
    var body: some View {
        NavigationStack {
            
            ZStack {
                LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]),
                               startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                Text("Verification")
                    .offset(x:-40,y:-200)
                    .font(.system(size: 40, weight: .semibold))
                
                NavigationLink(destination: Destnation()){Text("Verify")}
                    .foregroundColor(Color.black).frame(width:150,height: 40).background(Color.init("Green")).cornerRadius(15).position(x:190,y:500)
                
                VStack(spacing: (20)){
                    
                    
                    
                    VStack  {
                        
                        VStack (spacing: (20)){
                            Text("Verify Your Mobile Number")
                                //.font(.headline)
                                .position(x:190 , y:200)
                            
                            Text("An 4-digit code has been sent to")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.696))
                                .position(x:190 , y:160)
                            
                        }}
                    
                    
                    
                    
                    HStack{
                        NavigationLink(destination: RegesterWithPhone()){Text("Change")
                        }
                        .padding(.leading)
                        .position(x:288 , y:130)
                        
                        
                        Text("+966")
                            .offset(x:-130,y:70)
                            .foregroundColor(.gray)
                        
                        iPhoneNumberField("590616647", text: $text)
                            .offset(x:100,y:40)
                            .position(x:-140, y:90)
                        
                    }
                    
                    HStack{
                        Text("\(countDownTimer)")
                            .onReceive(timer) { _ in
                                if countDownTimer > 0 && timerRunning {
                                    countDownTimer -= 1
                                    
                                } else {
                                    timerRunning = false
                                    
                                }
                                
                            }
                            .font(.system(size: 15 , weight: .bold))
                            .position(x:300, y:105)
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    HStack(spacing:(2)) {
                        
                        
                        TextField("  ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        
                            .textFieldStyle(.roundedBorder)
                            //.position(x:20 , y:260)
                            .frame(width: 60 , height: 20)
                        
                        
                        
                        TextField("  ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(.roundedBorder)
                            //.position(x:25 , y:260)
                            .frame(width: 60 , height: 20)
                        
                        
                        
                        TextField("  ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(.roundedBorder)
                           // .position(x:30 , y:260)
                            .frame(width: 60 , height: 20)
                        
                        
                        TextField("  ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(.roundedBorder)
                            //.position(x:35 , y:260)
                            .frame(width: 60 , height: 20)
                        
                    }.position(x:190,y:-90)
                    
                    
                    
                    
                    VStack{
                        Text(". The OTP will be expired in ")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.696))
                            .position(x:150 , y:-170)
                        
                        
                        
                        
                        Text(". Didn’t recive the code? ")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.696))
                            .position(x:140 , y:-180)
                        
                        
                        
                        Button("Resend") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .position(x:300 , y:-226)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                   // NavigationLink(destination: Destnation()){Text("Verify")}
                       // .frame(maxWidth:  .infinity)
                       // .foregroundColor(.black)
                       // .background(Color.init("Green"))
                      //  .position(x:50, y:350)
                      //  .cornerRadius(90)
                      //  .frame(width: 100 , height: 500)
                    
                    
                    
                    
                    
                }}}//.navigationBarBackButtonHidden()
        
    }
}

struct Verification_Previews: PreviewProvider {
    static var previews: some View {
        Verification()
    }
}
