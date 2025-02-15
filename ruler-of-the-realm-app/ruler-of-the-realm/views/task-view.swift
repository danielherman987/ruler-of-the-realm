//
//  task.swift
//  ruler-of-the-realm
//
//  Created by Daniel Herman on 2/15/25.
//

import SwiftUI

struct TaskView: View {
    @State private var tasks: [String] = ["Task 1", "Task 2", "Task 3"]
    
    var body: some View {
        VStack {
            List {
                ForEach(tasks, id: \.self) { task in
                    Text(task)
                }
            }
            .navigationBarTitle("Tasks")
            
            Spacer()
            
            Button(action: {
                // Add a new task
                tasks.append("New Task")
            }) {
                Text("Add Task")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
