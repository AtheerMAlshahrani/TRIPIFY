//
//  Restaurant.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 07/04/1444 AH.
//

import SwiftUI

struct RestaurantType: Hashable {
    var txt: String
    var image: String
}
struct Restaurant: View {
    var restaurant: [RestaurantType] = [
        RestaurantType(txt: " Sala de Despiece ",image: "res1"),
        RestaurantType(txt: " Dos Cielos Madrid by Hermanos Torres ",image: "res2"),
        RestaurantType(txt: " Restaurante Sacha ",image: "res3"),
        RestaurantType(txt: " Hotel Único Madrid ",image: "res4")
    ]
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            NavigationView {
                ScrollView{
                    VStack {
                        Grid {
                            ForEach(restaurant, id: \.self) { restaurants in
                                VStack {
                                    ZStack{
                                        Image(restaurants.image)
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
                                                .position(x:50)
                                        }
                                    }.padding(25)
                                    HStack{
                                        Text(restaurants.txt).frame(width:350, height: 50).background(Color.init("LightPink")).cornerRadius(15)}
                                    HStack{
                                        Button{} label: {
                                            Link(destination: URL(string:"tel://+34913745890")!){
                                                Image(systemName: "phone.fill").padding()}
                                        }
                                        
                                        Link(destination: URL(string:"https://www.saladedespiece.com")!){
                                            Image(systemName: "link").padding()}
                                        
                                        Link(destination: URL(string:"https://www.google.com/maps/search/Sala+de+Despiece/@40.4283146,-3.6907576,15z/data=!3m1!4b1")!){
                                            Image(systemName: "location.fill").padding()
                                        }
                                        
                                    }.foregroundColor(.black).frame(width:350, height: 50).background(Color.init("Green")).cornerRadius(15)
                                }
                            }
                        }
                    }.navigationTitle("Restaurants")
                }
            }//.navigationBarBackButtonHidden()
        }
    }
}
    
    struct Restaurant_Previews: PreviewProvider {
        static var previews: some View {
            Restaurant()
        }
    }

