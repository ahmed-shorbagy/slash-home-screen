# Slash Responsive Home Screen

A Flutter project implementing a responsive home screen.

## Getting Started

This project serves as a starting point for a Flutter application.

### Prerequisites

- Ensure you have [Flutter](https://flutter.dev/docs/get-started/install) installed on your system.
- A suitable IDE such as [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/).

### Installing

1. Clone the repository:
    ```sh
    git clone https://github.com/ahmed-shorbagy/slash-home-screen
    cd slash_responsive_home_screen
    ```

2. Install dependencies:
    ```sh
    flutter pub get
    ```

3. Run the app:
    ```sh
    flutter run
    ```

### Running the Project

- Ensure your emulator or physical device is running.
- Use the following command to run the project on the desired platform:
    ```sh
    flutter run
    ```

## Project Overview

This project includes the following main features:

- **Functionality**: Implements the home screen with various sections like categories, best selling, etc.
- **Design Consistency**: Adheres to the design specifications provided in Figma.
- **Responsiveness**: The UI adapts to different screen sizes and orientations.
- **Code Quality**: Follows best practices, clean architecture, and maintainable code.
- **State Management**: Properly implemented using Bloc or Cubit.


## Folder Structure

```markdown
lib/
├── core/
│   ├── error/
│   ├── platform/
│   ├── usecases/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── home/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── Cubits/
│   │       ├── Views/
│   │       └── widgets/
│   └── ...
├── constants.dart
└── main.dart

## Submission

The project is available on (https://github.com/ahmed-shorbagy/slash-home-screen). Ensure the repository includes all necessary files and documentation.

## Authors

- Ahmed Elshorbagy - (https://github.com/ahmed-shorbagy)



