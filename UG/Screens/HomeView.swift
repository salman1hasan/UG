//
//  HomeView.swift
//  UG
//
//  Created by Salman Hasan on 11/6/23.
//

import SwiftUI

struct HomeView: View {
  // MARK: - PROPERTY
  
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  // MARK: - BODY
  
  var body: some View {
    VStack(spacing: 20) {
     Text("Home")
        .font(.largeTitle)
    
        Button(action:{
            isOnboardingViewActive = true
        }){
            Text("Restart")
        }
    }
  }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
