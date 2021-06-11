//
// The ExpensesTracker project.
// Created by optionaldev on 11/06/2021.
// Copyright © 2021 optionaldev. All rights reserved.
// 

import AVFoundation
import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("Hello, world!")
      .padding()
      .onAppear {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
          case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { granted in
              print("Access granted ? \(granted)")
            }
          case .denied, .restricted:
            print("Not possible")
          default:
            print("Let's get rolling")
        }
      }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
