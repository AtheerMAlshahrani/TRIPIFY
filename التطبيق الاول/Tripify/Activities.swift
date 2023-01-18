//
//  Activities.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI
struct ActivitieType: Hashable {
    var txt: String
    var image: String
}

struct Activities: View {
    var activitie: [ActivitieType] = [
        ActivitieType(txt: " The Prado ",image: "act1"),
        ActivitieType(txt: " Retiro Park ",image: "act2"),
        ActivitieType(txt: " Royal Palace ",image: "act3"),
        ActivitieType(txt: " Santiago Bernabéu Stadium ",image: "act4")
    ]
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            NavigationView {
                ScrollView{
                    VStack {
                        Grid {
                            ForEach(activitie, id: \.self) { activities in
                                VStack {
                                    ZStack{
                                        Image(activities.image)
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
                                                .position(x:95,y:60)
                                        }
                                    }.padding(-25)
                                    HStack{
                                        Text(activities.txt).frame(width:350, height: 50).background(Color.init("LightPink")).cornerRadius(15)}
                                    HStack{
                                        Button{} label: {
                                            Link(destination: URL(string:"tel://+34913302800")!){
                                                Image(systemName: "phone.fill").padding()}
                                        }
                                        
                                        Link(destination: URL(string:"https://www.museodelprado.es/en")!){
                                            Image(systemName: "link").padding()}
                                        
                                        Link(destination: URL(string:"https://goo.gl/maps/3XDhD5cta8SbiE4v7")!){
                                            Image(systemName: "location.fill").padding()
                                        }
                                        
                                    }.foregroundColor(.black).frame(width:350, height: 50).background(Color.init("Green")).cornerRadius(15)
                                }
                            }
                        }
                    }.navigationTitle("Activities")
                }
            }//.navigationBarBackButtonHidden()
        }
    }
}

struct Activities_Previews: PreviewProvider {
    static var previews: some View {
        Activities()
    }
}
