//
//  ViewController.swift
//  crastic
//
//  Created by Velvat on 4/3/16.
//  Copyright © 2016 Velvat. All rights reserved.
//

import UIKit

class RoomEditController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var tota: String?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text=tota;
        // Do any additional setup after loading the view, typically from a nib.
        
      
        
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
