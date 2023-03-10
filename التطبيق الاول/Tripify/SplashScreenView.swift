//
//  SplashScreenView.swift
//  Tripify
//
//  Created by Kawthar Almajhad on 09/04/1444 AH.
//

import SwiftUI
struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient (colors: [.init("lightpink"),.white]),
                           startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            if isActive {
                StartingView()
            } else {
                VStack {
                    VStack {
                        Image("ch 1 logo")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(40)
                            .font(.system(size: 80))
                            .foregroundColor(.red)
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.00
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
