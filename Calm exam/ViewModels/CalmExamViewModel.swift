import Foundation
import Combine

class CalmExamViewModel: ObservableObject {

    // MARK: - Published State
    @Published var exam: Exam? {
        didSet {
            saveExam()
        }
    }

    // MARK: - Storage Key
    private let examKey = "savedExam"

    // MARK: - Init
    init() {
        loadExam()
    }

    // MARK: - Business Logic
    func daysLeft() -> Int? {
        guard let exam = exam else { return nil }

        let components = Calendar.current.dateComponents(
            [.day],
            from: Date(),
            to: exam.date
        )

        return max(components.day ?? 0, 0)
    }

    // MARK: - Persistence
    private func saveExam() {
        guard let exam = exam else { return }

        if let data = try? JSONEncoder().encode(exam) {
            UserDefaults.standard.set(data, forKey: examKey)
        }
    }

    private func loadExam() {
        guard
            let data = UserDefaults.standard.data(forKey: examKey),
            let savedExam = try? JSONDecoder().decode(Exam.self, from: data)
        else {
            return
        }

        self.exam = savedExam
    }
}

