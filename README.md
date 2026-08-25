# GeoAlgebra

**GeoAlgebra** is an offline-first mobile learning application designed for Grade 8 students studying Algebra and Geometry under the Philippine **MATATAG K-10 Curriculum**. It was developed for Lun Padidu National High School to address connectivity limitations identified in the school's student survey, ensuring that lesson content, practice activities, and progress tracking remain fully accessible without an internet connection.

## Features

- **Learn** — Browse Algebra and Geometry topics organized by the DepEd Three-Term Budget of Work. Each lesson includes an Overview, a concept Explanation, and a Worked Example.
- **Practice & Review** *(in progress)* — Practice Exercises, Quiz Games, Educational Games, Review Notes, and Progress Tracking.
- **Fully offline** — All content and student progress are stored locally using SQLite; no account or internet connection required after installation.

## Tech Stack

- **Framework:** Flutter
- **Architecture:** MVVM (Model–View–ViewModel)
- **Local storage:** SQLite via `sqflite`
- **Navigation:** Flutter named routes

## Project Structure

lib/
├── core/
│ ├── database/ # SQLite setup, schema, and seed data
│ ├── routes/ # Named route definitions
│ └── theme/ # App-wide theming
├── models/ # Data models (Topic, Lesson, etc.)
├── viewmodels/ # Business logic and data access per screen
├── views/ # UI screens (Home, Algebra, Geometry, Lesson)
└── widgets/ # Reusable UI components (TopicCard, TermHeader)


## Curriculum Alignment

Topics are organized by term to mirror DepEd's official Grade 8 Mathematics Budget of Work:

| Term | Focus |
|------|-------|
| Term 1 | Algebraic expressions, operations, special products, factorization, rational expressions, sequences, Cartesian coordinate plane |
| Term 2 | Volume of solids, Pythagorean theorem, triangle inequality theorems, linear equations & inequalities in one variable |
| Term 3 | Systems of linear equations, linear inequalities in two variables |

## Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (^3.12.2 or later)
- Android Studio / Xcode for platform-specific builds
- A connected device or emulator

### Installation

```bash
git clone <repository-url>
cd geoalgebra
flutter pub get
flutter run
```

### System Requirements

| Platform | Minimum |
|----------|---------|
| Android | 8.0+, 4 GB RAM, 500 MB storage |
| iOS | 13+, 500 MB storage |

## Roadmap

- [x] Home navigation and Learn pathway (subject → topic → lesson)
- [x] Local SQLite database integration
- [x] Three-term curriculum-aligned topic structure
- [ ] Practice Exercises
- [ ] Quiz Games
- [ ] Educational Games
- [ ] Review Notes
- [ ] Progress Tracking

## Learn More About Flutter

- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)
- [Flutter documentation](https://docs.flutter.dev/)
