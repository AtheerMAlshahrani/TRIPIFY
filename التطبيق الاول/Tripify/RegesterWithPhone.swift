//
//  RegesterWithPhone.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI
import iPhoneNumberField

struct RegesterWithPhone: View {
    @State var text = ""
    var body: some View {
        NavigationStack {
            ZStack{
                LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                Text("Join Us")
                    .offset(x:-80,y:-200)
                    .font(.system(size: 40, weight: .semibold))
                Text("Mobile Number")
                    .font(.system(size:30))
                    .offset(y:-70)
                Text("Please enter your mobile phone number.")
                    .foregroundColor(.gray)
                Text("+966")
                    .offset(x:-140,y:41)
                    .foregroundColor(.gray)
                iPhoneNumberField("Phone", text: $text)
                    .offset(x:80,y:40)
                    .padding()
                
                NavigationLink(destination: Verification()){Text("Send code")}.foregroundColor(Color.black).frame(width:150,height: 40).background(Color.init("Green")).cornerRadius(15).position(x:190,y:470)
                
                NavigationLink(destination: Destnation()){Text(" LATER")}.foregroundColor(Color.blue).font(.caption).position(x:190,y:510)
                
                
                
            }
        }.navigationBarBackButtonHidden()
    }}

struct RegesterWithPhone_Previews: PreviewProvider {
    static var previews: some View {
        RegesterWithPhone()
    }
}
