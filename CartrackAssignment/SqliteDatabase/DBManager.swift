//
//  DBManager.swift
//  CartrackAssignment
//
//  Created by chetan kumar on 09/08/22.
//

import Foundation
import GRDB

class DBManager {
    
    static let shared = DBManager()
    private var dbQueue: DatabaseWriter
    
    /// initialize manager with ccreating connecction with database
    private init() {
         dbQueue = try! DatabaseQueue(path: FileStorageManager.shared.getPath("UsersData.sqlite"))
    }
    
    func fetchRecordFromDatabase(forUser userName: String, password: String) -> Bool {
        var userCount = 0
        do {
            try dbQueue.read { db in
                let rows = try Row.fetchAll(db,
                                            sql: "SELECT * FROM UserList WHERE (username = '\(userName)' AND password = '\(password)')")
                print("rows----->",rows)
                userCount = rows.count
            }
        }catch {
            print(error)
        }
        return (userCount > 0) ? true : false
    }
    
}
