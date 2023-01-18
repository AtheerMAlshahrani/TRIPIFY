//
//  Notifications.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 05/04/1444 AH.
//

import SwiftUI

struct Notifications: View {
    @State var WeatherOn = false
    @State var ReminderOn = false
    var body: some View {
        ZStack { LinearGradient(gradient: Gradient (colors: [.init("LightPink"),.white]),
        startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea() }
        
       // Text("Notifications").font(.largeTitle).position(x:200,y:-40)
        Text("Notifications")
            .offset(x:-30,y:-50)
            .font(.system(size: 40, weight: .semibold))
        Text("If you want to be notified about how the weather is like during your trip, please turn on the notification button.").padding(20).foregroundColor(.gray).position(x:205,y:20).font(.caption)
        
            Toggle(isOn:$WeatherOn) {
                Text("Weather Notification")
            }
                .padding(10)
                .font(.title)
                .frame(width: 350, height: 70)
                .background(Color.init("LightPink"))
                .cornerRadius(15)
                .position(x:200,y:-35)
                .tint(Color.init("Green"))
        
        Text("If yoou want to be reminded about your flight time, please turn on the notifcations button.").padding(20).foregroundColor(.gray).position(x:200,y:-60).font(.caption)
        
        Toggle(isOn:$ReminderOn) {
            Text("Reminder Notification")
        }
            .padding(10)
            .font(.title)
            .frame(width: 350, height:70)
            .background(Color.init("Green"))
            .cornerRadius(15)
            .position(x:200,y:-115)
            .tint(Color.init("LightPink"))


    }
    
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
