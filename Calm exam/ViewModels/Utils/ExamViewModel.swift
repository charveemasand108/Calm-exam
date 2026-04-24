import Foundation

class ExamViewModel: ObservableObject {
    @Published var exam: Exam? {
        didSet { saveExam() }
    }

    private let examKey = "savedExam"

    init() {
        loadExam()
    }

    func daysLeft() -> Int? {
        guard let exam = exam else { return nil }
        let diff = Calendar.current.dateComponents([.day], from: Date(), to: exam.date)
        return max(diff.day ?? 0, 0)
    }

    func saveExam() {
        guard let exam else { return }
        if let data = try? JSONEncoder().encode(exam) {
            UserDefaults.standard.set(data, forKey: examKey)
        }
    }

    func loadExam() {
        guard
            let data = UserDefaults.standard.data(forKey: examKey),
            let exam = try? JSONDecoder().decode(Exam.self, from: data)
        else { return }
        self.exam = exam
    }
}

