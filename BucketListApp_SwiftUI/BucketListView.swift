//
//  BucketListView.swift
//  BucketListApp_SwiftUI
//
//  Created by aaa on 31/05/2023.
//

import SwiftUI

struct BucketListView: View {
    @State private var bucketList: [String] = ["Traning", "Hometasks", "Work"]
    @State private var newTask = ""
    @State var chooseTask = ""
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("New bucket task", text: $newTask)
                        .textFieldStyle(.roundedBorder)
                    Button {
                        bucketList.append(newTask)
                        newTask = ""
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        
                    }
                    .disabled(newTask.isEmpty)
                }
                .padding()
                List {
                    ForEach(bucketList, id: \.self) { task in
                        NavigationLink(destination:  TaskView(task: task), label: {
                            Text(task)
                        })
                        //                            Text(task)
                    }
                    .onDelete { indexSet in
                        bucketList.remove(atOffsets: indexSet)
                    }
                }
            }
            
            //TODO: Change to .grouped
            .listStyle(.plain)
        }
        .navigationTitle("Bucket List")
        
//        .navigationDestination(for: String.self) { task in
//            //                self.chooseTask = task
//            TaskView(task: task)
//        }
    }
}

struct BucketListView_Previews: PreviewProvider {
    static var previews: some View {
        BucketListView()
    }
}
