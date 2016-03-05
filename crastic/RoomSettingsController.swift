//
//  ViewController.swift
//  crastic
//
//  Created by Velvat on 4/3/16.
//  Copyright © 2016 Velvat. All rights reserved.
//

import UIKit

class RoomSettingsController: UIViewController {
   
    @IBOutlet weak var roomdimensionsTextField: UITextField!
    @IBOutlet weak var roomnameTextField: UITextField!
    
    @IBAction func goButton(sender: AnyObject) {
        Util.roomClient.roomName=roomnameTextField.text!
        
        
        let RoomModel: roomModel = roomModel()
        RoomModel.roomName = roomnameTextField.text!
        RoomModel.roomDimensions = roomdimensionsTextField.text!
        let isInserted = ModelManager.getInstance().addRoomData(RoomModel)
        if isInserted {
            Util.invokeAlertMethod("", strBody: "Record Inserted successfully.", delegate: nil)
        } else {
            Util.invokeAlertMethod("", strBody: "Error in inserting record.", delegate: nil)
        }
        
        
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
