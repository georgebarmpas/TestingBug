//
//  ContentView.swift
//  Testing_bug
//
//  Created by George Barmpas on 4/2/22.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    @ObservedObject var camera = FrontOrBackCamera.shared
  
    var body: some View {
        if(camera.frontCamera == false){
            ARViewContainer().edgesIgnoringSafeArea(.all).overlay(
                ZStack {
                    VStack{
                        Spacer()
                       
                        Button("Change to front facing camera") {
                            FrontOrBackCamera.shared.frontCamera = true
                        }
                    }
                    
                    
                }
            )
            
        }else{
            ARViewContainer().edgesIgnoringSafeArea(.all).overlay(
                ZStack {
                    VStack{
                        Spacer()
                       
                        Button("Change to rear facing camera") {
                            FrontOrBackCamera.shared.frontCamera = false
                        }
                    }
                }
            )
            
        }
    }
}





