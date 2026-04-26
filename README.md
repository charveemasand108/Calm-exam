# 🧘 Calm Exam

> **Study smarter. Stress less. Show up ready.**

Calm Exam is an iOS app designed to help students approach exams with clarity and confidence. It combines exam countdown tracking, focused study sessions, and breathing exercises — everything you need to stay calm under pressure.

---

## ✨ Features

- 📅 **Exam Countdown** — Add your upcoming exam and track exactly how many days you have left
- ⏱️ **Focus Timer** — Distraction-free study sessions to help you stay in the zone
- 🌬️ **Breathing Exercises** — Built-in guided breathing to calm pre-exam nerves
- 💾 **Persistent Storage** — Your exam details are saved locally and restored automatically across sessions

---

## 🏗️ Architecture

Calm Exam follows the **MVVM** pattern for clean separation of concerns:

All state lives in `CalmExamViewModel` (`ObservableObject`), with views staying purely reactive via `@Published` properties.

---

## 📂 File Structure

- `CalmExamApp.swift` — App entry point
- `ContentView.swift` — Root screen router
- `Models/Exam.swift` — Exam model (Identifiable, Codable)
- `ViewModels/CalmExamViewModel.swift` — Core state and persistence logic
- `AddExamView.swift` — Exam creation screen
- `FocusTimerView.swift` — Focus session screen
- `BreathingView.swift` — Breathing exercise screen

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| UI | SwiftUI |
| State Management | ObservableObject + @Published |
| Persistence | UserDefaults + JSONEncoder/Decoder |
| Reactive | Combine |
| Language | Swift 5.9 |
| Min iOS | iOS 16.0+ |

---

## 🚀 Getting Started

1. Clone the repo — `git clone https://github.com/charveemasand108/Calm-exam.git`
2. Open `Calm exam.xcodeproj` in Xcode
3. Select a simulator or your device
4. Hit **Run** ▶️

---

## 🗺️ Roadmap

- 🔔 **Push Notifications** — Daily study reminders and exam day alerts
- 📊 **Study Streak Tracker** — Visualize your consistency over time
- 🎵 **Ambient Sound** — Lo-fi / white noise during focus sessions
- ☁️ **iCloud Sync** — Seamlessly sync exam data across devices
- 🗓️ **Multiple Exams** — Track and manage an entire exam schedule at once

---

## 👩‍💻 Author

**Charvee Masand** — [@charveemasand108](https://github.com/charveemasand108)

---

## 📄 License

MIT License — free to use, fork, and build on.
