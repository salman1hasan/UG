//
//  OnboardingView.swift
//  UG
//
//  Created by Salman Hasan on 11/7/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    @State private var isAnimating: Bool = false
   
    // MARK: - BODY
    
    var body: some View {
        ZStack {
          Color("ColorBlack")
             .ignoresSafeArea(.all, edges: .all)
            
        VStack(spacing: 20) {
                
            Spacer()
                
            VStack(spacing:0) {
                Text("UNGUARDED.")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Text("It's not how much we give but how much love we put into giving.")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                }
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
                .animation(.easeOut(duration: 1), value: isAnimating)
                

        ZStack {
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
           
            Image("character-1")
                .resizable()
                .scaledToFit()
                .opacity(isAnimating ? 1 : 0)
                .animation(.easeOut(duration: 0.5), value: isAnimating)
                
                
            }
            
            Spacer()
            
            ZStack{
                Capsule()
                    .fill(Color.white.opacity(0.2))
                
                Capsule()
                    .fill(Color.white.opacity(0.2))
                    .padding(8)
                
                
        Text("Get Started")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x:20)
                
                
        HStack{
            Capsule()
                .fill(Color("ColorOrange"))
                .frame(width: buttonOffset + 80)
                    
            Spacer()
    }
    HStack {
        ZStack{
            Circle()
             .fill(Color("ColorOrange"))
            Circle()
            .fill(.black.opacity(0.15))
            .padding(8)
        Image(systemName:"chevron.right.2")
            .font(.system(size:24, weight:.bold))
        }
    .foregroundColor(.white)
    .frame(width: 80, height: 80, alignment: .center)
        .offset(x: buttonOffset)
        .gesture(
         DragGesture()
          .onChanged { gesture in
          if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
        buttonOffset = gesture.translation.width
                        }
                    }
            .onEnded{ _ in
                if buttonOffset > buttonWidth / 2 {
                    buttonOffset = buttonWidth - 80
                    isOnboardingViewActive = false
                } else {
                    buttonOffset = 0
                }
            }
        )
                Spacer()
                } //: HSTACK
            }
            .frame(width: buttonWidth, height: 80, alignment: .center)
            .padding()
            .opacity(isAnimating ? 1 : 0)
            .offset(y: isAnimating ? 0 : 40)
            .animation(.easeOut(duration: 1), value: isAnimating)

          }
       } //: HEADER
        .onAppear(perform: {
            isAnimating = true
        })
    }
}
        
struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}


