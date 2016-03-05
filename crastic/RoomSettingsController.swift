//
//  ViewController.swift
//  crastic
//
//  Created by Velvat on 4/3/16.
//  Copyright © 2016 Velvat. All rights reserved.
//

import UIKit

class RoomSettingsController: UIViewController {
   
    @IBOutlet weak var roomnameTextField: UITextField!
    
    @IBAction func goButton(sender: AnyObject) {
        Util.roomClient.roomName=roomnameTextField.text
        self.performSegueWithIdentifier("push3", sender: self )
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
