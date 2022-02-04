//
//  CustomARView.swift
//  ModelPicker
//
//  Created by Michael Dobekidis
//

import RealityKit
import ARKit
import SwiftUI

class CustomARView: ARView {
    
  
    

    // MARK: - Lifecycle
    
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
        print(FrontOrBackCamera.shared.frontCamera)
        if(FrontOrBackCamera.shared.frontCamera == false ){
            setupARView()
        }else{
            setupFaceAR()
        }
    }

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        
        if(FrontOrBackCamera.shared.frontCamera == false ){
            setupARView()
        }else{
            setupFaceAR()
        }
       
    }
    
    deinit {
        cleanUpARView()
    }
    
    func cleanUpARView() {
        
    }
    
    func showAlert(){
        var alert = UIAlertController(title: "Alert",message:"Removed item",
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK",style:UIAlertAction.Style.default,handler: nil))
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: {})
    }
}

// MARK: - Private

private extension CustomARView {
    
   

    
    func setupFaceAR(){
        let config = ARFaceTrackingConfiguration()
        
        session.run(config)
        //FrontOrBackCamera.shared.frontCamera = false
    }

    func setupARView() {

      
        let config = ARWorldTrackingConfiguration()
        
        config.planeDetection = [.horizontal]
        config.initialWorldMap
        config.environmentTexturing = .automatic
   
       

        session.run(config)
        
    }


}
