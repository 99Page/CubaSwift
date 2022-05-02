//
//  GroupManager.swift
//  CubaDemo
//
//  Created by 노우영 on 2022/04/30.
//

import Foundation
import CoreData

class GroupManager: ObservableObject {
    
    let persistentContainers: NSPersistentContainer
    @Published var groups: [Group] = []
    
    init() {
        persistentContainers = NSPersistentContainer(name: "GroupModel")
        persistentContainers.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core data Store failed. \(error.localizedDescription)")
            }
                                               
        }
        
        fetchGroup()
    }
    
    func fetchGroup() {
        let fetchRequest: NSFetchRequest<Group> = Group.fetchRequest()
        
        do {
            groups = try persistentContainers.viewContext.fetch(fetchRequest)
        } catch {
            groups = []
            print("failed to fetch \(error.localizedDescription)")
        }
    }
    
    func saveGroup(group: Group) {
        
        groups.append(group)
        do {
            try persistentContainers.viewContext.save()
        } catch {
            print("failed to save \(error.localizedDescription)")
        }
    }
    
    func deleteGroup(group: Group) {
        
        persistentContainers.viewContext.delete(group)
        
        do {
            try persistentContainers.viewContext.save()
        } catch {
            persistentContainers.viewContext.rollback()
            print("Failed to delete movie \(error.localizedDescription)")
        }
    }
}
