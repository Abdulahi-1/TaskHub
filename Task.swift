import UIKit

// The Task model
struct Task: Codable, Equatable {

    // The task's title
    var title: String

    // An optional note
    var note: String?

    // The due date by which the task should be completed
    var dueDate: Date

    // A boolean to determine if the task has been completed. Defaults to `false`
    var isComplete: Bool = false {
        didSet {
            if isComplete {
                completedDate = Date()
            } else {
                completedDate = nil
            }
        }
    }

    // The date the task was completed
    private(set) var completedDate: Date?

    // The date the task was created
    private(set) var createdDate: Date = Date()

    // An id (Universal Unique Identifier) used to identify a task.
    private(set) var id: String = UUID().uuidString

    // Initialize a new task
    init(title: String, note: String? = nil, dueDate: Date = Date()) {
        self.title = title
        self.note = note
        self.dueDate = dueDate
    }

    // Conform to Equatable (based on id)
    static func == (lhs: Task, rhs: Task) -> Bool {
        return lhs.id == rhs.id
    }
}

// MARK: - Task + UserDefaults
extension Task {

    // Save an array of tasks to UserDefaults
    static func save(_ tasks: [Task]) {
        if let data = try? JSONEncoder().encode(tasks) {
            UserDefaults.standard.set(data, forKey: "tasks")
        }
    }

    // Retrieve an array of saved tasks from UserDefaults
    static func getTasks() -> [Task] {
        if let data = UserDefaults.standard.data(forKey: "tasks"),
           let tasks = try? JSONDecoder().decode([Task].self, from: data) {
            return tasks
        }
        return []
    }

    // Add a new task or update an existing one
    func save() {
        var tasks = Task.getTasks()

        if let index = tasks.firstIndex(of: self) {
            tasks[index] = self // Update existing
        } else {
            tasks.append(self) // Add new
        }

        Task.save(tasks)
    }
}

