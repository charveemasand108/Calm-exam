import Foundation

struct Exam: Identifiable, Codable {
    let id: UUID
    var name: String
    var date: Date
}

