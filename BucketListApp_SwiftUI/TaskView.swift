//
//  TaskView.swift
//  BucketListApp_SwiftUI
//
//  Created by aaa on 31/05/2023.
//

import SwiftUI

struct TaskView: View {
//    @Binding var task: String
     var task: String
    @State private var showForm = false
//    init(task: Binding<String>){
//            self._task = task
//     //если требуется выполнить еще какие-то действия при инициализации
//        }
    var body: some View {
        Text(task)
                    .navigationBarItems(trailing: Button("Add") {
                        self.showForm = true
                    })
        //   .sheet(isPresented: $showForm, content: { Subtasks() })
                    .sheet(isPresented: $showForm, content: { Text(task) })
        }
    }

//struct TaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskView()
//    }
//}
