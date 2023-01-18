//
//  Hotels.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 05/04/1444 AH.
//

import SwiftUI

struct HotelType: Hashable {
    var txt1: String
    var image: String
}

struct Hotels: View {
    var hotels: [HotelType] = [
        HotelType(txt1: " Four Seasons Hotel Madrid ",image: "1"),
        HotelType( txt1: " Westin Palace Madrid ",image: "2"),
        HotelType(txt1: " The Principal Madrid Hotel ",image: "3"),
        HotelType(txt1: " Hotel Único Madrid ",image: "4")
    ]
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            NavigationView {
                ScrollView{
                    VStack {
                        
                        Grid {
                            ForEach(hotels, id: \.self) { hotel in
                                VStack {
                                    ZStack{
                                        Image(hotel.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(15)
                                        .frame(width: 350, height: 350, alignment: .center)
                                        NavigationLink(destination: CurrentPlan()) {
                                            Image(systemName: "plus")
                                                .foregroundColor(.black)
                                                .frame(width:45,height:45)
                                                .background(Color(.white))
                                                .cornerRadius(45/2)
                                                .position(x:65,y:60)
                                        }
                                    }
                                    HStack{
                                        Text(hotel.txt1).frame(width:350, height: 50).background(Color.init("LightPink")).cornerRadius(15)}
                                    HStack{
                                        Button{} label: {
                                            Link(destination: URL(string:"tel://+84913308740")!){
                                                Image(systemName: "phone.fill").padding()}
                                        }
                                        
                                        Link(destination: URL(string:"https://www.fourseasons.com/madrid/")!){
                                            Image(systemName: "link").padding()}
                                        
                                        Link(destination: URL(string:"https://www.google.com/maps/place/Four+Seasons+Hotel+Madrid/@40.4170089,-3.700388,15z/data=!4m8!3m7!1s0x0:0x79e8fdb28a9d32a0!5m2!4m1!1i2!8m2!3d40.4170187!4d-3.7004128")!){
                                            Image(systemName: "location.fill").padding()
                                        }
                                        
                                    }.foregroundColor(.black).frame(width:350, height: 50).background(Color.init("Green")).cornerRadius(15)
                                    
                        
                                }
                                
                                
                            }
                            
                        }

                    }
                    .navigationTitle("Hotels")
                }
                
            }//.navigationBarBackButtonHidden()
            
        }
    }
}


struct Hotels_Previews: PreviewProvider {
    static var previews: some View {
        Hotels()
    }
}

