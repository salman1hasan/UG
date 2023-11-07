//
//  OnboardingView.swift
//  UG
//
//  Created by Salman Hasan on 11/7/23.
//

import SwiftUI

struct OnboardingView: View{
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK: -BODY
    
    var body: some View {
        VStack(spacing:20) {
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
