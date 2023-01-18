//
//  Settings.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 09/04/1444 AH.
//

import SwiftUI

struct Settings: View {
    
    let settinglist = [
        "Notifications" ,"Edit Phone Number"," Sign Out"
    ]
    
    
    
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient (colors: [.init("lightpink"),.white]),
                               startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                
                

                    
                    
                    
                    List {
                        ForEach(self.settinglist, id: \.self) { item in
                            Text(item)
                        }
                        .navigationTitle("Setting")
                        
                    }}
            }.navigationBarBackButtonHidden()
            
            
            
            
            
            
            
            
            
            
            
            
        }}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
