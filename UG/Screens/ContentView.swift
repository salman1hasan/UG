//
//  ContentView.swift
//  UG
//
//  Created by Salman Hasan on 11/6/23.
//
import SwiftUI

struct ContentView: View {
@AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20){
            Text("Onboarding")
                .font(.largeTitle)
            
        Button(action:{
            isOnboardingViewActive = false
        }){
                Text("Start")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
