//
//  ViewController.swift
//  crastic
//
//  Created by Velvat on 4/3/16.
//  Copyright © 2016 Velvat. All rights reserved.
//

import UIKit

class RoomEditController: UIViewController {
   
    // instantiate the words to be used
    var wordArray = ["placar", "mueble", "escritorio", "monitor", "cajon","cama", "puerta", "ventana", "estante", "cuadro", "silla"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title=Util.roomClient.roomName
        
        
        // Using a for loop, create the labels to be drag-and-dropped
        var i=0
        for word in wordArray {
            
            var y:Int
            let label = UILabel()
            label.text = word
            label.font = UIFont.systemFontOfSize(20)
            label.sizeToFit()
            label.backgroundColor = UIColor.orangeColor()
            
            // set the center of the label to a random position within the canvas
            //let x = CGFloat(arc4random_uniform(300))
            //let y = CGFloat(arc4random_uniform(480))
            y=80+i
            label.center = CGPoint(x: 60, y: y)
            
            // instantiate UIPanGestureRecognizer
            let panGesture = UIPanGestureRecognizer(target: self, action: Selector("handlePanGesture:"))
            // attach it to the label and enable it
            label.addGestureRecognizer(panGesture)
            label.userInteractionEnabled = true
            
            view.addSubview(label)
            i=i+30
        }
        
        
    }
    
    
    
    func handlePanGesture(panGesture: UIPanGestureRecognizer) {
        // get translation (the coordinate changes)
        var translation = panGesture.translationInView(view)
        // reset translation to 0 once coordinate changes registered
        panGesture.setTranslation(CGPointZero, inView: view)
        
        // add dx, dy to current label center position
        var label = panGesture.view as! UILabel
        label.center = CGPoint(x: label.center.x + translation.x, y: label.center.y + translation.y)
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
