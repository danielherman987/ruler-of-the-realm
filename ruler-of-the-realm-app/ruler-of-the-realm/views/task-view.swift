import SwiftUI

struct TaskView: View {
    @State private var tasks: [Task] = []  // List of tasks
    @State private var newTaskTitle: String = ""  // New task input
    
    @State private var showCompletedTasks = false  // Flag for showing completed tasks
    
    var body: some View {
        NavigationView {
            VStack {
                // New Task Input Field
                HStack {
                    TextField("Enter task", text: $newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button(action: {
                        addNewTask()
                    }) {
                        Text("Add")
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.trailing)
                }
                
                // Task List
                List {
                    // Displaying active tasks
                    ForEach(tasks.filter { !$0.isCompleted }) { task in
                        HStack {
                            Button(action: {
                                toggleTaskCompletion(task)
                            }) {
                                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(task.isCompleted ? .green : .gray)
                            }
                            
                            Text(task.title)
                                .strikethrough(task.isCompleted, color: .gray)
                                .foregroundColor(task.isCompleted ? .gray : .primary)
                            
                            Spacer()
                            
                            Button(action: {
                                deleteTask(task)
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                
                // Completed Tasks Section (Initially collapsed)
                DisclosureGroup("Completed Tasks", isExpanded: $showCompletedTasks) {
                    // Displaying completed tasks
                    ForEach(tasks.filter { $0.isCompleted }) { task in
                        Text(task.title)
                            .strikethrough()
                            .foregroundColor(.gray)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Task Manager", displayMode: .inline)
            .padding()
        }
    }
    
    // Add a new task
    private func addNewTask() {
        guard !newTaskTitle.isEmpty else { return }
        
        let newTask = Task(title: newTaskTitle)
        tasks.append(newTask)
        newTaskTitle = ""  // Reset input field
    }
    
    // Toggle task completion
    private func toggleTaskCompletion(_ task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
    
    // Delete a task
    private func deleteTask(_ task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks.remove(at: index)
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
