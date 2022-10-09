//
//  ContentView.swift
//  ExStyle
//
//  Created by 김종권 on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
  @State private var angle: Angle = .init(degrees: 20)
  
  var body: some View {
    Text("Jake의 iOS 앱 개발 알아가기")
      .foregroundColor(.blue)
      .rotationEffect(angle)
      .gesture(rotationGesture)
  }
  
  private var rotationGesture: some Gesture {
    RotationGesture()
      .onChanged {
        print($0)
        angle = $0
      }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
