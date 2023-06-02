//
//  BucketItem.swift
//  BucketListApp_SwiftUI
//
//  Created by aaa on 01/06/2023.
//

import Foundation

struct BucketItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var note = ""
    var completedDate = Date.distantPast

    static var examples: [BucketItem] {
        [
            BucketItem(name: "Traning"),
            BucketItem(name: "Hometasks", note: "do  English exercise"),
            BucketItem(name: "Work", note: "New task", completedDate: Date())
        ]
    }
}
