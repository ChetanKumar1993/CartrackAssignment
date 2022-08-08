//
//  FileManager.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 08/08/22.
//

import Foundation

class FileStorageManager {
    
    static let shared = FileStorageManager()
    
    private init() {
        
    }

     func getPath(_ fileName: String) -> String{
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileUrl = documentDirectory.appendingPathComponent(fileName)
        print("Database Path :- \(fileUrl.path)")
        return fileUrl.path
    }
    
     func copyDatabase(_ filename: String){
        let dbPath = getPath(filename)
        let fileManager = FileManager.default
        
        if !fileManager.fileExists(atPath: dbPath){
            let bundle = Bundle.main.resourceURL
            let file = bundle?.appendingPathComponent(filename)
            var error:NSError?
            do{
                try fileManager.copyItem(atPath: (file?.path)!, toPath: dbPath)
            }catch let error1 as NSError{
                error = error1
            }
            
            if error != nil{
                print("error in db")
            }else{
                print("Yeah !!")
            }
    
        }
    }
    
}
