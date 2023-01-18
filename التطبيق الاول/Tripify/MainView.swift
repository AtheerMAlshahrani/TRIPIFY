//
//  ContentView.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 01/04/1444 AH.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        NavigationStack {
            // ZStack(alignment:.top)
            ZStack { LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]),
                                    startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea() }
            
            VStack{
                
                ScrollView(.horizontal){
                    
                    Grid {GridRow {
                        
                        NavigationLink(destination: Hotels()){Text("Hotels").foregroundColor(.black).frame(width: 130.0, height: 140.0).background(Color.init("Gray")).cornerRadius(15)}
                        NavigationLink(destination: Restaurant()){Text("Restaurants").foregroundColor(.black).frame(width: 130.0, height: 140.0).background(Color.init("Green")).cornerRadius(15)}
                        NavigationLink(destination: Activities()){Text("Activities").foregroundColor(.black).frame(width: 130.0, height: 140.0).background(Color.init("LightPink")).cornerRadius(15)}
                        
                      }
                        
                    }
                    
                }
                
                
                
            }.position(x:200,y:20)
            
            HStack{
                
                Text("Travel Visa").font(.largeTitle)
                    .frame(width: 200.0, height: 50.0)
                    .background(Color.init("LightPink"))
                    .cornerRadius(15)
                    .position(x:140,y: -70)
                VStack{
                    
                        Text("Plans").font(.largeTitle)
                            .frame(width: 200.0, height: 50.0)
                            .background(Color.init("Green"))
                            .cornerRadius(15)
                            .position(x:-63,y: -370)
                    NavigationLink(destination: EmpassyInfo()){Text("Embassy Informations")}
                    .frame(width: 340.0, height: 90)
                    .foregroundColor(Color(.black))
                    .background(Color.init("Green"))
                    .cornerRadius(15)
                    .position(x:0,y: -80)
                }
            }
            
            
        }
        
        //.navigationBarBackButtonHidden()
    }}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}
