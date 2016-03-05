//
//  ViewController.swift
//  crastic
//
//  Created by adox on 4/3/16.
//  Copyright © 2016 adox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let user="mezeitune"
    let pass="123"
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var okLabel: UILabel!
    @IBAction func okButton(sender: AnyObject) {
        if(userTextField.text==user && passTextField.text==pass){
            okLabel.text="correcto"
        }else{
            okLabel.text="No es correcto"
        }
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

