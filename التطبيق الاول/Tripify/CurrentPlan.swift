//
//  CurrentPlan.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 10/04/1444 AH.
//

import SwiftUI

struct CurrentPlan: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]),
                               startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                
                
                VStack{
                    Text("Plans")
                        .offset(x:-80,y:90)
                        .font(.system(size: 40, weight: .semibold))
                    
                    
                    Text("Your Current Plans")
                       // .font(.headline)
                        .position(x:100 , y:100)
                    
                }
                
                
                VStack{
                    ScrollView(.horizontal){ Grid {
                        GridRow  {
                            
                            NavigationLink(destination: Plans()){Text("First Plan")
                                   // .font(.headline)
                                    .frame(width: 150.0, height: 340.0)
                                    .cornerRadius(10)
                                    .foregroundColor(Color(.black))
                                    .background(Color
                                        .init("LightPink"))
                                    .cornerRadius(10)
                                }
                            
                            NavigationLink(destination: MainView()){Image(systemName: "plus.app.fill")
                                    .frame(width: 150.0, height: 340.0)
                                    .foregroundColor(Color(.black))
                                    .cornerRadius(10)
                                    .background(Color.init("LightPink"))
                                    .border(Color(.black))
                                    .cornerRadius(10)
                                }
                            
                            NavigationLink(destination: MainView()){Image(systemName: "plus.app.fill")
                                
                                    .frame(width: 150.0, height: 340.0)
                                    .foregroundColor(Color(.black))
                                    .cornerRadius(10)
                                    .border(Color(.black))
                                    .cornerRadius(10)
                                }
                            
                        }.position(x:60, y:400)
                    }}}}
            
            
            
            
            
            
            
            
            
        
    }}
}

struct CurrentPlan_Previews: PreviewProvider {
    static var previews: some View {
        CurrentPlan()
    }
}
