//
//  EmpassyInfo.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI

struct EmpassyInfo: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Text("Embassy Info")
                    .offset(x:-40,y:-40)
                    .font(.system(size: 40, weight: .semibold))
                
                Button{} label: {
                    Link(destination: URL(string:"https://www.exteriores.gob.es/Embajadas/RIAD/en/Paginas/index.aspx")!){
                        HStack {
                            Text("Link")
                           
                        }
                    }
                }
                .frame(width: 340.0, height: 80)
                .background(Color.init("Green"))
                .tint(.black)
                .cornerRadius(15)
               .padding()

                Button{} label: {
                    Link(destination: URL(string:"tel://+34913302800")!){
                        HStack {
                            Text("Contact Number")
                           
                        }
                    }
                }
                .frame(width: 340.0, height: 80)
                .background(Color.init("LightPink"))
                .tint(.black)
                .cornerRadius(15)
                .padding()
                
                Button{} label: {
                    Link(destination: URL(string:"https://goo.gl/maps/BSx5GybuV5n3EZmK8")!){
                        HStack {
                            Text("Location")
                           
                        }
                    }
                }
                .frame(width: 340.0, height: 80)
                .background(Color.init("Green"))
                .tint(.black)
                .cornerRadius(15)
                .padding()
             
                    }
                    
                }
                
        }
}

struct EmpassyInfo_Previews: PreviewProvider {
    static var previews: some View {
        EmpassyInfo()
    }
}
