//
//  TaskView.swift
//  BucketListApp_SwiftUI
//
//  Created by aaa on 31/05/2023.
//

import SwiftUI

struct TaskView: View {
    @Binding  var nameTask: String
    @State private var showForm = false
    
    init(nameTask: Binding<String>){
        self._nameTask = nameTask
    }
    
    var body: some View {
        Text(nameTask)
//        TextField(text: nameTask.name, label: nameTask.name)
            .navigationBarItems(trailing: Button("Add") {
                self.showForm = true
            })
        //   .sheet(isPresented: $showForm, content: { Subtasks() })
            .sheet(isPresented: $showForm, content: { Text(nameTask) })
    }
}

//struct TaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskView()
//    }
//}
