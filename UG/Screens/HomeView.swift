//
//  HomeView.swift
//  UG
//
//  Created by Salman Hasan on 11/6/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    
    
    // MARK : -BODY
    
var body: some View {
    VStack(spacing: 20) {
    // MARK: - HEADER
        
    Spacer()
    ZStack {
    Link(destination: URL(string: "https://www.unguarded.com")!, label: {
            Image("QRCode")
                .resizable()
                .frame(width: 380, height: 380)
            })
        }
               
Spacer()
    Button(action:{
        withAnimation{
            isOnboardingViewActive = true
        }
    }) {
    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
        .imageScale(.large)
            
    Text("UNGUARDED")
        .font(.system(.title3, design:.rounded))
        .fontWeight(.bold)
    }
       .buttonStyle(.borderedProminent)
       .buttonBorderShape(.capsule)
       .controlSize(.large)
     }
    .onAppear(perform: {
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            isAnimating = true
          })
    })
  }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
