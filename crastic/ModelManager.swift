//
//  ModelManager.swift
//  crastic
//
//  Created by Velvat on 5/3/16.
//  Copyright © 2016 Velvat. All rights reserved.
//

import UIKit


let sharedInstance = ModelManager()

class ModelManager: NSObject {
    
    var database: FMDatabase? = nil
    
    // This code is called at most once
    class func getInstance() -> ModelManager
    {
        if(sharedInstance.database == nil)
        {
            sharedInstance.database = FMDatabase(path: Util.getPath("Room.sqlite"))
        }
        return sharedInstance
    }
    
    func addRoomData(RoomModel: roomModel) -> Bool
    {
        sharedInstance.database!.open()
        let isInserted = sharedInstance.database!.executeUpdate("INSERT INTO roomTable (roomName, roomDimensions) VALUES (?, ?)", withArgumentsInArray: [RoomModel.roomName, RoomModel.roomDimensions])
        sharedInstance.database!.close()
        return isInserted
    }
    
    
    func getAllRoomData() -> NSMutableArray {
        sharedInstance.database!.open()
        let resultSet: FMResultSet! = sharedInstance.database!.executeQuery("SELECT * FROM roomTable", withArgumentsInArray: nil)
        let marrStudentInfo : NSMutableArray = NSMutableArray()
        if (resultSet != nil) {
            while resultSet.next() {
                let RoomModel : roomModel = StudentInfo()
                RoomModel.id_room = resultSet.stringForColumn("id_room")
                RoomModel.roomName = resultSet.stringForColumn("roomName")
                RoomModel.roomDimensions = resultSet.stringForColumn("roomDimensions")
                marrStudentInfo.addObject(RoomModel)
            }
        }
        sharedInstance.database!.close()
        return marrStudentInfo
    }
    
    
}
