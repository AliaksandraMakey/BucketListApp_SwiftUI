//
//  BucketListView.swift
//  BucketListApp_SwiftUI
//
//  Created by aaa on 31/05/2023.
//

import SwiftUI

struct BucketListView: View {
    @State private var bucketList = BucketItem.examples
    @State private var newItem = ""
    @State var chooseItem = ""
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("New bucket task", text: $newItem)
                        .textFieldStyle(.roundedBorder)
                    Button {
                        let newBucketItem = BucketItem(name: newItem)
                        bucketList.append(newBucketItem)
                        newItem = ""
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        
                    }
                    .disabled(newItem.isEmpty)
                }
                .padding()
                List {
                    ForEach($bucketList) { $item in
                        NavigationLink(destination:  TaskView(nameTask: $item.name),
                                       label: {
                            Text(item.name)
                        })
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
    }
}

struct BucketListView_Previews: PreviewProvider {
    static var previews: some View {
        BucketListView()
    }
}
