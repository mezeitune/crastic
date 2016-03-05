//
//  ViewController.swift
//  crastic
//
//  Created by Velvat on 4/3/16.
//  Copyright © 2016 Velvat. All rights reserved.
//

import UIKit

class RoomsController: UIViewController,  UITableViewDataSource, UITableViewDelegate {
    var arrDataRooms: NSMutableArray!
    @IBOutlet weak var tableRooms: UITableView!
    @IBAction func roomb(sender: AnyObject) {
        
        self.performSegueWithIdentifier("push2", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.getDataRooms()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getDataRooms()
    {
        arrDataRooms=NSMutableArray()
        arrDataRooms=ModelManager.getInstance().getAllRoomData()
        tableRooms.reloadData()
    }
    
    //Metodos para la tabla
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDataRooms.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myCell: CellRooms = tableView.dequeueReusableCellWithIdentifier("myCell") as! CellRooms
        
        let articulo: roomModel = arrDataRooms.objectAtIndex(indexPath.row) as! roomModel
        
        myCell.nameLabel.text=articulo.roomName
        myCell.dimensionLabel.text=articulo.roomDimensions
        myCell.idLabel.text=articulo.id_room
        
        return myCell
    }
    
    
}