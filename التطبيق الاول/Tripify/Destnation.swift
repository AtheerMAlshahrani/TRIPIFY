//
//  Destnation.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 08/04/1444 AH.
//

import SwiftUI

struct Destnation: View {
   // @State private var date = Date()
    @State private var selection = "Destination"
    @State var selectedDate: Date = Date.now
    @State var selectedDate1: Date = Date.now
    
    let startingDate: Date = Date()
    let endingDate : Date = Calendar.current.date(from: DateComponents(year: 2024)) ?? Date()
    let startingDate1: Date = Date()
    let endingDate1 : Date = Calendar.current.date(from: DateComponents(year: 2024)) ?? Date()
    
    let destination = ["Destination" ,"Spain,Madrid 🇪🇸","Italy,Rome 🇮🇹", "Turkey,Ankara 🇹🇷 ", "Greece,Athens 🇬🇷", "Egypt,Cairo 🇪🇬", "Korea,Seoul 🇰🇷","United Arab Emirates,Abu Dhabi 🇦🇪" ,"France,Paris 🇫🇷"]
    
    var dataFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    var body: some View {
        NavigationStack {
            
            ZStack{
                
                LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                Image("ch 1 logo")
                    .resizable()
                    .padding(.bottom, 430)
                    .frame(width:200,height:630)
                    .aspectRatio(contentMode: .fit)
                VStack{
                    
                
                    DatePicker("From", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                        .accentColor(Color.black)
                        .datePickerStyle(CompactDatePickerStyle())
                        .padding()
                        .font(.title2)
                    DatePicker("To", selection: $selectedDate1, in: startingDate1...endingDate1, displayedComponents: [.date])
                        .accentColor(Color.black)
                        .datePickerStyle(CompactDatePickerStyle())
                        .padding()
                        .font(.title2)
                }.padding(40)
                VStack {
                    Picker("Select a destination", selection: $selection) {
                        ForEach(destination, id: \.self) {
                            Text($0)
                        }}
                    .pickerStyle(.menu)
                    .frame(width: 200, height: 40)
                    .background(Color("Green"))
                    .cornerRadius(15)
                    .tint(.black)
                    .position(x:190,y:460)
                    
                    
                }
                /*
                Menu("Destiniation") {
                    Button("Saudi Arabia, Riyadh", action: {})
                    Button("Italy, Rome", action: {})
                    Button("Turkey, Ankara", action: {})
                    Button("Egypt, Cairo", action: {})
                    Button("Korea, Seoul", action: {})
                    Button("Spain, Madrid", action: {})
                    Button("United Arab Emirates, Abu Dhabi", action: {})
                    Button("France, Paris", action: {})
                    
                    
                }
                .frame(width: 150, height: 40)
                .background(Color("Green"))
                .cornerRadius(15)
                .tint(.black)
                .position(x:190,y:460)
                DatePicker(
                    "From",
                    selection: $date,
                    displayedComponents: [.date]
                    
                )
                .padding(.top, 20)
                .padding(.leading,170)
                .frame(width: 130.0, height: 50.0)
                .accentColor(.black)
                DatePicker(
                    "To",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .padding(.top, 130)
                .padding(.leading,170)
                .frame(width: 130.0, height: 50.0)
                .accentColor(.black)
                Text("From")
                    .padding([.top, .trailing], 20)
                    .padding(.leading,-115)
                Text("To")
                    .padding([.top, .trailing], 130)
                    .padding(.leading,-80)
                 */
                
                NavigationLink(destination: MainView()){Text("Go")}
                    .frame(width: 150, height: 40)
                    .background(Color("LightPink"))
                    .cornerRadius(15)
                    .tint(.black)
                    .position(x:190,y:520)
                
            }
        }//.navigationBarBackButtonHidden()
    }}

struct Destnation_Previews: PreviewProvider {
    static var previews: some View {
        Destnation()
    }
}
