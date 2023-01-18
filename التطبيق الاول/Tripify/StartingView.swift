//
//  StartingView.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI

struct StartingView: View {
    var body: some View {
        NavigationView{
            VStack{

                ZStack{
                    LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    Image("ch 1 logo")
                        .resizable()
                        .padding(.bottom, 430)
                    
                        .frame(width:200,height:630)
                        .aspectRatio(contentMode: .fit)
                    Text("Let's discover the world together!").font(.title)
                        .foregroundColor(.black)
                    NavigationLink(destination: RegesterWithPhone()){Text("Get Started")}
                        .foregroundColor(Color.black).frame(width:150,height: 40).background(Color.init("Green")).cornerRadius(15).position(x:190,y:560)
                    
                }
            }
        }.navigationBarBackButtonHidden()
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}

