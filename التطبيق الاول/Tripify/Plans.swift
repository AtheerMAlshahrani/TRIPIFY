//
//  Plans.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 09/04/1444 AH.
//

import SwiftUI

struct Plans: View {
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    
                    HStack{
                        
                        
                        Text("")
                          //  .font(.headline)
                            .frame(width: 20, height:20)
                            .cornerRadius(15)
                            .border(Color(.black))
                            .background(Color.init("Gray"))
                            .cornerRadius(5)
                            .position(x:40)
                        
                        Text("Hotels")
                            .position(x:10)
                            .font(.system(size: 11))
                        
                        Text("")
                        
                           // .font(.headline)
                            .frame(width: 20, height:20)
                            .cornerRadius(15)
                            .border(Color(.black))
                            .background(Color.init("Green"))
                            .cornerRadius(5)
                            .position(x:10)
                        
                        Text("Restaurant")
                            .font(.system(size: 11))
                            .position(x:-10)
                        
                        
                        
                        Text("")
                        
                           // .font(.headline)
                            .frame(width: 20, height:20)
                            .cornerRadius(15)
                            .border(Color(.black))
                            .background(Color.init("LightPink"))
                            .cornerRadius(5)
                            .position(x:-10)
                            
                        
                        Text("Activities")
                            .font(.system(size: 11))
                        .position(x:-35)   }.offset(x:20,y:100)
                    
                    HStack{
                        Text("Sunday")
                            .font(.system(size: 25))
                            .position(x:80,y:-152)
                        Text("06 November 2022")
                            .font(.system(size: 17))
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.696))
                            .position(x:3,y:-150)
                        
                    }
                    
                }
                
                
                
                
                VStack{
                    
                    Text("Four Seasons Hotel Madrid ")
                    
                        .frame(width: 300, height: 60)
                        .cornerRadius(10)
                        .background(Color
                            .init("Gray"))
                        .cornerRadius(10)
                        .padding()
                    
                    
                    
                    
                    
                    Text("Sala de Despiece")
                    
                        .frame(width: 300, height: 60)
                        .cornerRadius(10)
                        .background(Color
                            .init("Green"))
                        .cornerRadius(10)
                        .padding()
                    
                    
                    
                    
                    Text("The Prado")
                    
                        .frame(width: 300, height: 60)
                        .cornerRadius(10)
                        .background(Color
                            .init("LightPink"))
                        .cornerRadius(15)
                        .padding()
                    
                }.offset(y:50)
                
                VStack{
                    HStack{
                        NavigationLink(destination: MainView()) {
                            Image(systemName: "plus.app.fill")
                                .foregroundColor(.black)
                            
                        } .offset(x:140,y:-300)
                    }
                    HStack{
                        
                        NavigationLink(destination: Notifications()){Image(systemName: "bell.fill")
                            .foregroundColor(.black)} .offset(x:-140,y:-320)
                    }
                }
                
            }}}}

struct Plans_Previews: PreviewProvider {
    static var previews: some View {
        Plans()
    }
}
