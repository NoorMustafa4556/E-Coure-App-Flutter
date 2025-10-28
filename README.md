

# 📘 E-Course App (Flutter)

A dynamic and fully featured **Learning Management App** built with **Flutter & Dart**, designed for both learners and educators. This app allows instructors to create and manage courses, while students can enroll, view lessons (video/text), track progress, and participate in quizzes — all via a sleek mobile interface. Built with clean architecture, modern state management and offline-ready capabilities, it aims to bring high-quality education to mobile devices.

---

## ✨ Key Features

🎓 Role Based Access – Separate, optimized flows for Students and Instructors.

🗂 Course Creation & Management – Instructors can create, update, and organize courses, modules, videos, and learning resources.

🔍 Course Discovery – Explore and search courses by subject, category, or instructor, with smart filters.

📖 Lesson Viewer – Students can stream videos, read text/PDF lessons, and learn at their own pace.

📊 Progress Tracking – Interactive dashboards show completed lessons, quiz results, and certificate progress.

🧪 Quizzes & Assessments – Built-in module-wise quizzes to reinforce learning and evaluate understanding.

📜 Certificates – Auto-generated completion certificates after finishing a course.

📥 Offline Mode – Download lessons and access them without internet (in development).

🎨 Modern UI / Themes – Beautiful Material Design, dark & light modes, and smooth animations.

🔐 Secure Authentication – Email/password and social logins powered by Firebase Auth.

☁️ Backend Integration – Uses Firebase Firestore & Storage (or custom API) for secure data handling.

🎬 Multimedia Support – Supports video streaming, PDF viewing, and interactive quizzes.

📱 Responsive & Cross-Platform – Built with Flutter, offering a consistent experience on Android and iOS.
---

## 🖼 Screenshots

<p align="center">
  <img src="assets/images/1.png" width="30%" alt="Screenshot 1"/>
  <img src="assets/images/2.png" width="30%" alt="Screenshot 2"/>
  <img src="assets/images/3.png" width="30%" alt="Screenshot 3"/>
  <img src="assets/images/4.png" width="30%" alt="Screenshot 4"/>
  <img src="assets/images/5.png" width="30%" alt="Screenshot 5"/>
  <img src="assets/images/6.png" width="30%" alt="Screenshot 6"/>
  <img src="assets/images/7.png" width="30%" alt="Screenshot 7"/>
  <img src="assets/images/8.png" width="30%" alt="Screenshot 8"/>
  <img src="assets/images/9.png" width="30%" alt="Screenshot 9"/>
  <img src="assets/images/10.png" width="30%" alt="Screenshot 10"/>
   <img src="assets/images/11.png" width="30%" alt="Screenshot 11"/>
   <img src="assets/images/12.png" width="30%" alt="Screenshot 12"/>
   <img src="assets/images/13.png" width="30%" alt="Screenshot 13"/>
   <img src="assets/images/14.png" width="30%" alt="Screenshot 14"/>
   <img src="assets/images/15.png" width="30%" alt="Screenshot 15"/>
</p>

---

## 🛠 Tech Stack & Architecture

| Layer            | Technology                         |
|------------------|------------------------------------|
| **UI / Frontend** | Flutter & Dart                     |
| **State Management** | Provider / Riverpod / Bloc       |
| **Backend**       | Firebase Auth, Firestore / Custom REST API |
| **Offline Storage** | SQLite / Hive / Local caching    |
| **Architecture**  | Clean Architecture (Separation of UI-Logic-Data) |

---

## 📂 Project Structure 
```bash
E-Coure-App-Flutter/
├── android/          # Android-specific files
├── ios/              # iOS-specific files
├── lib/              # Main Dart source code
│   ├── main.dart     # Entry point
│   ├── screens/      # UI screens (e.g., home, login)
│   ├── widgets/      # Reusable components
│   ├── models/       # Data models (e.g., Course, User)
│   ├── services/     # Business logic (e.g., API calls)
│   └── utils/        # Helpers (e.g., constants, validators)
├── assets/           # Images, fonts, etc.
├── test/             # Unit and widget tests
├── pubspec.yaml      # Dependencies and config
└── README.md         # This file!
```
## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

-   Flutter SDK installed on your machine.
-   An IDE like Android Studio or VS Code with Flutter plugins.

---

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/NoorMustafa4556/E-Coure-App-Flutter.git
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd E-Coure-App-Flutter
    ```
3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
4.  **Run the app on an emulator or a physical device:**
    ```bash
    flutter run
    ```
Select your emulator/simulator or connect a physical device.

---
